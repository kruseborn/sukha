const c = @import("vulkan.zig");
const std = @import("std");
const assert = std.debug.assert;

const ImageInfo = struct {
  vkImageType: c.VkImageType = undefined,
  VkImageUsageFlags: c.vkImageUsageFlags = undefined,
  VkImageLayout: c.vkImageLayout = undefined,
  VkImageViewType: c.vkImageViewType = undefined,
};

const TEXTURE_TYPE = enum { 
  TEXTURE_1D, TEXTURE_2D, TEXTURE_3D, ATTACHMENT, IMAGE_STORAGE, DEPTH 
};

fn createImageInfoFromType(type: TEXTURE_TYPE) ImageInfo {
  var imageInfo: ImageInfo = {};

  switch (type) {
    TEXTURE_1D => {
      imageInfo.vkImageType = c.VkImageType.VK_IMAGE_TYPE_1D;
      imageInfo.vkImageViewType = c.VK_IMAGE_VIEW_TYPE_1D;
      imageInfo.vkImageUsageFlags = c.VK_IMAGE_USAGE_TRANSFER_DST_BIT | c.VK_IMAGE_USAGE_SAMPLED_BIT;
      imageInfo.vkImageLayout = c.VK_IMAGE_LAYOUT_PREINITIALIZED;
    },
    TEXTURE_2D => {
      imageInfo.vkImageType = c.VkImageType.VK_IMAGE_TYPE_2D;
      imageInfo.vkImageViewType = c.VK_IMAGE_VIEW_TYPE_2D;
      imageInfo.vkImageUsageFlags = c.VK_IMAGE_USAGE_TRANSFER_DST_BIT | c.VK_IMAGE_USAGE_SAMPLED_BIT;
      imageInfo.vkImageLayout = c.VK_IMAGE_LAYOUT_PREINITIALIZED;
    },
    TEXTURE_3D => {
      imageInfo.vkImageType = c.VkImageType.VK_IMAGE_TYPE_3D;
      imageInfo.vkImageViewType = c.VK_IMAGE_VIEW_TYPE_3D;
      imageInfo.vkImageUsageFlags = c.VK_IMAGE_USAGE_TRANSFER_DST_BIT | c.VK_IMAGE_USAGE_SAMPLED_BIT;
      imageInfo.vkImageLayout = c.VK_IMAGE_LAYOUT_PREINITIALIZED;
    },
    ATTACHMENT => {
      imageInfo.vkImageType = c.VkImageType.VK_IMAGE_TYPE_2D;
      imageInfo.vkImageViewType = c.VK_IMAGE_VIEW_TYPE_2D;
      imageInfo.vkImageUsageFlags = c.VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT | c.VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT |
                                    c.VK_IMAGE_USAGE_SAMPLED_BIT | c.VK_IMAGE_USAGE_STORAGE_BIT;
      imageInfo.vkImageLayout = c.VK_IMAGE_LAYOUT_UNDEFINED;
    },
    IMAGE_STORAGE => {
      imageInfo.vkImageType = c.VkImageType.VK_IMAGE_TYPE_2D;
      imageInfo.vkImageViewType = VK_IMAGE_VIEW_TYPE_2D;
      imageInfo.vkImageUsageFlags = c.VK_IMAGE_USAGE_STORAGE_BIT | c.VK_IMAGE_USAGE_TRANSFER_SRC_BIT;
      imageInfo.vkImageLayout = c.VK_IMAGE_LAYOUT_UNDEFINED;
    },
    DEPTH => {
      imageInfo.vkImageType = VK_IMAGE_TYPE_2D;
      imageInfo.vkImageViewType = VK_IMAGE_VIEW_TYPE_2D;
      imageInfo.vkImageUsageFlags =
          VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT | VK_IMAGE_USAGE_SAMPLED_BIT | VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT;
      imageInfo.vkImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
    },
    else => {
      assert(false);
    },
  }
  return imageInfo;
}

const CreateTextureInfo = struct {
  id: u8[20],
  type: TEXTURE_TYPE,
  format: c.VkFormat,
  size: c.VkExtent3D,
  sizeInBytes: u32,
  data: [*]u8,
};

const TextureData = struct {
  image: VkImage,
  imageView: VkImageView,
  //heapAllocation, DeviceHeapAllocation,
  format: VkFormat,
  imageType: VkImageType,
};

fn createDeviceTexture(textureInfo: *CreateTextureInfo, imageInfo: *ImageInfo, *texture) {
  // staging memory
  var copyCommandBuffer = c.VkCommandBuffer {};
  stagingBuffer = c.VkBuffer;
  VkDeviceSize stagingOffset;
  void *stagingMemory = mg::mgSystem.linearHeapAllocator.allocateStaging(
      textureInfo.sizeInBytes, 16, &copyCommandBuffer, &stagingBuffer, &stagingOffset);
  memcpy(stagingMemory, textureInfo.data, textureInfo.sizeInBytes);

  // https://github.com/KhronosGroup/Vulkan-Docs/wiki/Synchronization-Examples
  // Pipeline barrier before the copy to perform a layout transition
    //   sType: VkStructureType,
    // pNext: ?*const c_void,
    // srcAccessMask: VkAccessFlags,
    // dstAccessMask: VkAccessFlags,
    // oldLayout: VkImageLayout,
    // newLayout: VkImageLayout,
    // srcQueueFamilyIndex: u32,
    // dstQueueFamilyIndex: u32,
    // image: VkImage,
    // subresourceRange: VkImageSubresourceRange,

  var preCopyMemoryBarrier = c.VkImageMemoryBarrier {
    .sType = c.VkStructureType.VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
    .srcAccessMask = 0,
    .dstAccessMask = c.VK_ACCESS_TRANSFER_WRITE_BIT,
    .oldLayout = c.VK_IMAGE_LAYOUT_PREINITIALIZED,
    .newLayout = c.VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
    .srcQueueFamilyIndex = c.VK_QUEUE_FAMILY_IGNORED,
    .dstQueueFamilyIndex = c.VK_QUEUE_FAMILY_IGNORED,
    .image = texture->image,
    .subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1},

  vkCmdPipelineBarrier(copyCommandBuffer, VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT, VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0,
                       nullptr, 0, nullptr, 1, &preCopyMemoryBarrier);

  VkBufferImageCopy vkBufferImageCopy = {};
  vkBufferImageCopy.bufferOffset = stagingOffset;
  vkBufferImageCopy.imageSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
  vkBufferImageCopy.imageSubresource.mipLevel = 0;
  vkBufferImageCopy.imageSubresource.layerCount = 1;
  vkBufferImageCopy.imageExtent = textureInfo.size;

  vkCmdCopyBufferToImage(copyCommandBuffer, stagingBuffer, texture->image, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1,
                         &vkBufferImageCopy);

  // Pipeline barrier before using the image data
  VkImageMemoryBarrier postCopyMemoryBarrier = {};
  postCopyMemoryBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
  postCopyMemoryBarrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
  postCopyMemoryBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
  postCopyMemoryBarrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
  postCopyMemoryBarrier.newLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
  postCopyMemoryBarrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  postCopyMemoryBarrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  postCopyMemoryBarrier.image = texture->image;
  postCopyMemoryBarrier.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1};

  vkCmdPipelineBarrier(copyCommandBuffer, VK_PIPELINE_STAGE_TRANSFER_BIT, VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT, 0, 0,
                       nullptr, 0, nullptr, 1, &postCopyMemoryBarrier);

  VkImageViewCreateInfo vkImageViewCreateInfo = {};
  vkImageViewCreateInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
  vkImageViewCreateInfo.image = texture->image;
  vkImageViewCreateInfo.viewType = imageInfo.vkImageViewType;
  vkImageViewCreateInfo.format = textureInfo.format;
  vkImageViewCreateInfo.components = {VK_COMPONENT_SWIZZLE_R, VK_COMPONENT_SWIZZLE_G, VK_COMPONENT_SWIZZLE_B,
                                      VK_COMPONENT_SWIZZLE_A};
  vkImageViewCreateInfo.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1};
  checkResult(vkCreateImageView(mg::vkContext.device, &vkImageViewCreateInfo, nullptr, &texture->imageView));
}

static void createAttachmentTexture(const mg::CreateTextureInfo &textureInfo, const ImageInfo &imageInfo,
                                    mg::_TextureData *texture) {

  VkImageViewCreateInfo vkImageViewCreateInfo = {};
  vkImageViewCreateInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
  vkImageViewCreateInfo.image = texture->image;
  vkImageViewCreateInfo.viewType = imageInfo.vkImageViewType;
  vkImageViewCreateInfo.format = textureInfo.format;
  vkImageViewCreateInfo.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1};
  checkResult(vkCreateImageView(mg::vkContext.device, &vkImageViewCreateInfo, nullptr, &texture->imageView));
}

static void createImageStorage(const mg::CreateTextureInfo &textureInfo, const ImageInfo &imageInfo,
                               mg::_TextureData *texture) {

  VkImageViewCreateInfo vkImageViewCreateInfo = {};
  vkImageViewCreateInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
  vkImageViewCreateInfo.image = texture->image;
  vkImageViewCreateInfo.viewType = imageInfo.vkImageViewType;
  vkImageViewCreateInfo.format = textureInfo.format;
  vkImageViewCreateInfo.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1};
  checkResult(vkCreateImageView(vkContext.device, &vkImageViewCreateInfo, nullptr, &texture->imageView));
}
static void createDepthTexture(const mg::CreateTextureInfo &textureInfo, mg::_TextureData *texture) {
  VkImageViewCreateInfo vkImageViewCreateInfo = {};
  vkImageViewCreateInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
  vkImageViewCreateInfo.subresourceRange = {};
  vkImageViewCreateInfo.subresourceRange.baseMipLevel = 0;
  vkImageViewCreateInfo.subresourceRange.levelCount = 1;
  vkImageViewCreateInfo.subresourceRange.baseArrayLayer = 0;
  vkImageViewCreateInfo.subresourceRange.layerCount = 1;

  vkImageViewCreateInfo.subresourceRange.aspectMask = VK_IMAGE_ASPECT_DEPTH_BIT;
  vkImageViewCreateInfo.format = textureInfo.format;
  vkImageViewCreateInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
  vkImageViewCreateInfo.image = texture->image;

  checkResult(vkCreateImageView(mg::vkContext.device, &vkImageViewCreateInfo, nullptr, &texture->imageView));
}

void TextureContainer::createTextureContainer() {
  {
    VkDescriptorSetAllocateInfo descriptorSetAllocateInfo = {};
    descriptorSetAllocateInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
    descriptorSetAllocateInfo.descriptorPool = mg::vkContext.descriptorPool;
    descriptorSetAllocateInfo.descriptorSetCount = 1;
    descriptorSetAllocateInfo.pSetLayouts = &mg::vkContext.descriptorSetLayout.textures;

    vkAllocateDescriptorSets(mg::vkContext.device, &descriptorSetAllocateInfo, &_descriptorSet);
  }
  {
    VkDescriptorSetAllocateInfo descriptorSetAllocateInfo = {};
    descriptorSetAllocateInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
    descriptorSetAllocateInfo.descriptorPool = mg::vkContext.descriptorPool;
    descriptorSetAllocateInfo.descriptorSetCount = 1;
    descriptorSetAllocateInfo.pSetLayouts = &mg::vkContext.descriptorSetLayout.textures3D;

    vkAllocateDescriptorSets(mg::vkContext.device, &descriptorSetAllocateInfo, &_descriptorSet3D);
  }
}

TextureContainer::~TextureContainer() { mgAssert(_idToTexture.empty()); }

void TextureContainer::destroyTextureContainer() {
  for (uint32_t i = 0; i < _idToTexture.size(); i++) {
    if (_isAlive[i]) {
      TextureId id = {i, _generations[i]};
      removeTexture(id);
    }
  }
  _idToTexture.clear();
  _freeIndices.clear();
  _generations.clear();
  _isAlive.clear();
  vkFreeDescriptorSets(vkContext.device, vkContext.descriptorPool, 1, &_descriptorSet);
  vkFreeDescriptorSets(vkContext.device, vkContext.descriptorPool, 1, &_descriptorSet3D);
}

TextureId TextureContainer::createTexture(const CreateTextureInfo &textureInfo) {
  const auto imageInfo = createImageInfoFromType(textureInfo.type);

  mg::_TextureData texture = {};
  texture.imageType = imageInfo.vkImageType;
  texture.format = textureInfo.format;
  VkImageCreateInfo imageCreateInfo = {};
  imageCreateInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
  imageCreateInfo.imageType = imageInfo.vkImageType;
  imageCreateInfo.format = textureInfo.format;
  imageCreateInfo.extent = textureInfo.size;
  imageCreateInfo.mipLevels = 1;
  imageCreateInfo.arrayLayers = 1;
  imageCreateInfo.samples = VK_SAMPLE_COUNT_1_BIT;
  imageCreateInfo.tiling = VK_IMAGE_TILING_OPTIMAL;
  imageCreateInfo.usage = imageInfo.vkImageUsageFlags;
  imageCreateInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE; // // buffer is exclusive to a single queue family at a time.
  imageCreateInfo.initialLayout = imageInfo.vkImageLayout;
  checkResult(vkCreateImage(mg::vkContext.device, &imageCreateInfo, nullptr, &texture.image));

  VkMemoryRequirements vkMemoryRequirements;
  vkGetImageMemoryRequirements(mg::vkContext.device, texture.image, &vkMemoryRequirements);
  const auto memoryIndex =
      findMemoryTypeIndex(mg::vkContext.physicalDeviceMemoryProperties, vkMemoryRequirements.memoryTypeBits,
                          VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);

  texture.heapAllocation = mg::mgSystem.textureDeviceMemoryAllocator.allocateDeviceOnlyMemory(
      memoryIndex, vkMemoryRequirements.size, vkMemoryRequirements.alignment);
  checkResult(vkBindImageMemory(mg::vkContext.device, texture.image, texture.heapAllocation.deviceMemory,
                                texture.heapAllocation.offset));

  switch (textureInfo.type) {
  case TEXTURE_TYPE::TEXTURE_1D:
  case TEXTURE_TYPE::TEXTURE_2D:
  case TEXTURE_TYPE::TEXTURE_3D:
    createDeviceTexture(textureInfo, imageInfo, &texture);
    break;
  case TEXTURE_TYPE::ATTACHMENT:
    createAttachmentTexture(textureInfo, imageInfo, &texture);
    break;
  case TEXTURE_TYPE::IMAGE_STORAGE:
    createImageStorage(textureInfo, imageInfo, &texture);
  case TEXTURE_TYPE::DEPTH:
    createDepthTexture(textureInfo, &texture);
    break;
  default:
    mgAssert(false);
  };

  uint32_t currentIndex = 0;
  if (_freeIndices.size()) {
    currentIndex = _freeIndices.back();
    _freeIndices.pop_back();
  } else {
    currentIndex = uint32_t(_idToTexture.size());
    _idToTexture.push_back({});
    _generations.push_back(0);
    _isAlive.push_back({});
  }

  _idToTexture[currentIndex] = texture;
  _isAlive[currentIndex] = true;

  TextureId textureId = {};
  textureId.generation = _generations[currentIndex];
  textureId.index = currentIndex;
  return textureId;
}

uint32_t TextureContainer::getTexture2DDescriptorIndex(TextureId textureId) {
  mgAssert(textureId.index < _idToTexture.size());
  mgAssert(textureId.generation == _generations[textureId.index]);
  mgAssert(_isAlive[textureId.index]);
  mgAssert(_idToTexture.size() == _idToDescriptorIndex2D.size());

  return _idToDescriptorIndex2D[textureId.index];
}

uint32_t TextureContainer::getTexture3DDescriptorIndex(TextureId textureId) {
  mgAssert(textureId.index < _idToTexture.size());
  mgAssert(textureId.generation == _generations[textureId.index]);
  mgAssert(_isAlive[textureId.index]);
  mgAssert(_idToTexture.size() == _idToDescriptorIndex3D.size());

  return _idToDescriptorIndex3D[textureId.index];
}

Texture TextureContainer::getTexture(TextureId textureId) {
  mgAssert(textureId.index < _idToTexture.size());
  mgAssert(textureId.generation == _generations[textureId.index]);
  mgAssert(_isAlive[textureId.index]);

  const auto &textureData = _idToTexture[textureId.index];

  Texture texture = {};
  texture.imageView = textureData.imageView;
  texture.format = textureData.format;
  return texture;
}

void TextureContainer::removeTexture(TextureId textureId) {
  mgAssert(textureId.index < _idToTexture.size());
  mgAssert(textureId.generation == _generations[textureId.index]);
  mgAssert(_isAlive[textureId.index]);

  const auto &texture = _idToTexture[textureId.index];
  vkDestroyImage(mg::vkContext.device, texture.image, nullptr);
  vkDestroyImageView(mg::vkContext.device, texture.imageView, nullptr);
  mgSystem.textureDeviceMemoryAllocator.freeDeviceOnlyMemory(texture.heapAllocation);
  _generations[textureId.index]++;
  _isAlive[textureId.index] = false;
  _freeIndices.push_back(textureId.index);
}

void TextureContainer::setupDescriptorSets() {
  mg::waitForDeviceIdle();
  // Samplers
  {
    VkDescriptorImageInfo descriptorImageInfos[2] = {};
    descriptorImageInfos[0].sampler = vkContext.sampler.linearBorderSampler;
    descriptorImageInfos[1].sampler = vkContext.sampler.linearRepeat;

    VkWriteDescriptorSet writeDescriptorSet = {};
    writeDescriptorSet.sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
    writeDescriptorSet.dstBinding = 0;
    writeDescriptorSet.dstArrayElement = 0;
    writeDescriptorSet.descriptorCount = mg::countof(descriptorImageInfos);
    writeDescriptorSet.descriptorType = VK_DESCRIPTOR_TYPE_SAMPLER;
    writeDescriptorSet.pImageInfo = descriptorImageInfos;
    writeDescriptorSet.dstSet = _descriptorSet;

    vkUpdateDescriptorSets(mg::vkContext.device, 1, &writeDescriptorSet, 0, nullptr);
  }
  // 2D Textures
  {
    VkDescriptorImageInfo descriptorImageInfos[MAX_NR_OF_2D_TEXTURES] = {};
    uint32_t currentIndex = 0;
    _idToDescriptorIndex2D.clear();
    _idToDescriptorIndex2D.resize(_idToTexture.size());
    for (uint32_t i = 0; i < uint32_t(_idToTexture.size()); ++i) {
      if (!_isAlive[i])
        continue;
      if (_idToTexture[i].imageType != VK_IMAGE_TYPE_2D)
        continue;

      descriptorImageInfos[currentIndex].imageLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
      descriptorImageInfos[currentIndex].imageView = _idToTexture[i].imageView;
      _idToDescriptorIndex2D[i] = currentIndex;
      currentIndex++;
    }

    VkWriteDescriptorSet writeDescriptorSet = {};
    writeDescriptorSet.sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
    writeDescriptorSet.dstBinding = 1;
    writeDescriptorSet.dstArrayElement = 0;
    writeDescriptorSet.descriptorCount = currentIndex;
    writeDescriptorSet.descriptorType = VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE;
    writeDescriptorSet.pImageInfo = descriptorImageInfos;
    writeDescriptorSet.dstSet = _descriptorSet;

    vkUpdateDescriptorSets(mg::vkContext.device, 1, &writeDescriptorSet, 0, nullptr);
    mgAssert(MAX_NR_OF_2D_TEXTURES > currentIndex);
  }
  // 3D Textures
  {
    VkDescriptorImageInfo descriptorImageInfos[MAX_NR_OF_3D_TEXTURES] = {};
    uint32_t currentIndex = 0;
    _idToDescriptorIndex3D.clear();
    _idToDescriptorIndex3D.resize(_idToTexture.size());
    for (uint32_t i = 0; i < uint32_t(_idToTexture.size()); ++i) {
      if (!_isAlive[i])
        continue;
      if (_idToTexture[i].imageType != VK_IMAGE_TYPE_3D)
        continue;

      descriptorImageInfos[currentIndex].imageLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
      descriptorImageInfos[currentIndex].imageView = _idToTexture[i].imageView;
      _idToDescriptorIndex3D[i] = currentIndex;
      currentIndex++;
      mgAssert(MAX_NR_OF_3D_TEXTURES > currentIndex);
    }
    if (currentIndex > 0) {
      VkWriteDescriptorSet writeDescriptorSet = {};
      writeDescriptorSet.sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
      writeDescriptorSet.dstBinding = 0;
      writeDescriptorSet.dstArrayElement = 0;
      writeDescriptorSet.descriptorCount = currentIndex;
      writeDescriptorSet.descriptorType = VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE;
      writeDescriptorSet.pImageInfo = descriptorImageInfos;
      writeDescriptorSet.dstSet = _descriptorSet3D;

      vkUpdateDescriptorSets(mg::vkContext.device, 1, &writeDescriptorSet, 0, nullptr);
    }
  }
}

VkDescriptorSet TextureContainer::getDescriptorSet() { return _descriptorSet; }
VkDescriptorSet TextureContainer::getDescriptorSet3D() { return _descriptorSet3D; }

} // namespace mg