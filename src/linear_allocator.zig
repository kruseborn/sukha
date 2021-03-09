const std = @import("std");
const c = @import("vulkan.zig");
const mem = std.mem;
const assert = std.debug.assert;
usingnamespace @import("vulkan_core.zig");
usingnamespace @import("vulkan_utils.zig");
usingnamespace @import("sukha.zig");

// dynamic memory buffers
const LINEAR_VERTEX_BUFFER_SIZE: u32 = 256 * 1024;
const LINEAR_UNIFORM_BUFFER_SUZE: u32 = 256 * 1024;
const NR_OF_BUFFERS: u32 = 2;

pub const HeapMemory = struct {
  deviceMemory: c.VkDeviceMemory = undefined,
  offset: c.VkDeviceSize = undefined,
  descriptorSet: c.VkDescriptorSet = undefined,
};

pub const LinearAllocator = struct {
  deviceMemory: c.VkDeviceMemory = undefined,
  buffers: [NR_OF_BUFFERS]c.VkBuffer = undefined,
  mappedData: [NR_OF_BUFFERS][*]u8 = [NR_OF_BUFFERS][*]u8{undefined, undefined},
  offsets: [NR_OF_BUFFERS]c.VkDeviceSize = [NR_OF_BUFFERS]c.VkDeviceSize{0,0},
  descriptorSets: [NR_OF_BUFFERS]c.VkDescriptorSet = [NR_OF_BUFFERS]c.VkDescriptorSet{undefined, undefined},

  currentBuffer: u8 = 0,
  alignment: c.VkDeviceSize = undefined,

  pub fn new(size: c.VkDeviceSize, alignment: c.VkDeviceSize, usage: c.VkBufferUsageFlags) !LinearAllocator {
    var fba = LinearAllocator {};
    fba.alignment = alignment;

    var vkBufferCreateInfo = c.VkBufferCreateInfo {
      .sType = c.VkStructureType.VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
      .pNext = null,
      .flags = 0,
      .size = size,
      .usage = usage,
      .sharingMode = c.VkSharingMode.VK_SHARING_MODE_EXCLUSIVE,
      .queueFamilyIndexCount = 0,
      .pQueueFamilyIndices = null,
    };
    
    var i: u8 = 0;
    for (fba.buffers) |*buffer| {
      try checkResult(c.vkCreateBuffer(vkContext.device, &vkBufferCreateInfo, null, buffer));
    }
    var vkMemoryRequirements: c.VkMemoryRequirements = undefined;
    c.vkGetBufferMemoryRequirements(vkContext.device, fba.buffers[0], &vkMemoryRequirements);

    const requiredProperties = c.VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | c.VK_MEMORY_PROPERTY_HOST_COHERENT_BIT;
    const memoryTypeIndex = findMemoryTypeIndex(vkContext.physicalDeviceMemoryProperties, vkMemoryRequirements.memoryTypeBits, requiredProperties);

    fba.deviceMemory = try deviceAlloc(vkMemoryRequirements.size * 2, memoryTypeIndex);

    for (fba.buffers) |*buffer, index| {
      try checkResult(c.vkBindBufferMemory(vkContext.device, buffer.*, fba.deviceMemory, index * size));
    }
    var dataPtr: ?*c_void = null;
    try checkResult(c.vkMapMemory(vkContext.device, fba.deviceMemory, 0, c.VK_WHOLE_SIZE, 0, &dataPtr));
    var pixelsPtr:[*]u8 = @ptrCast([*]u8, dataPtr);
    fba.mappedData[0] = @ptrCast([*]u8, pixelsPtr[0..size]);
    fba.mappedData[1] = @ptrCast([*]u8, pixelsPtr[size..size*2]);

    var descriptorSetAllocateInfo = c.VkDescriptorSetAllocateInfo {
      .sType = c.VkStructureType.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO,
      .pNext = null,
      .descriptorPool = vkContext.descriptorPool,
      .descriptorSetCount = 2,
      .pSetLayouts = &vkContext.descriptorSetLayouts.dynamic,
    };
    try checkResult(c.vkAllocateDescriptorSets(vkContext.device, &descriptorSetAllocateInfo, &fba.descriptorSets));
    return fba;
  }

  pub fn swapBuffers(self: *LinearAllocator) void {
    self.currentBuffer = (self.currentBuffer + 1) % NR_OF_BUFFERS;
  }

  pub fn deinit(self: *LinearAllocator) !void {
    checkResult(c.vkDeviceWaitIdle(vkContext.device));
    deviceFree(self.deviceMemory);
  }

   pub fn alloc(self: *LinearAllocator, size: c.VkDeviceSize) !HeapMemory {
    const aligment = self.alignment;
    const alignMod = size % aligment;
    const alignedSize = if((size % aligment) == 0) size else (size + aligment - alignMod);

    var heapMemory = HeapMemory {
      .deviceMemory = self.deviceMemory,
      .offset = self.offsets[self.currentBuffer],
      .descriptorSet = self.descriptorSets[self.currentBuffer]
    };

    self.offsets[self.currentBuffer] += alignedSize;
    assert(self.offsets[self.currentBuffer] < self.mappedData.len);

    return heapMemory;
   }
};