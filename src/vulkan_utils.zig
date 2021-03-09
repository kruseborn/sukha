const c = @import("vulkan.zig");
const assert = @import("std").debug.assert;
usingnamespace @import("vulkan_core.zig");


pub fn checkResult(result: c.VkResult) !void {
    switch (result) {
        c.VkResult.VK_SUCCESS => {},
        else => return error.Unexpected,
    }
}

pub fn findMemoryTypeIndex(pMemoryProperties: c.VkPhysicalDeviceMemoryProperties, 
                       memoryTypeBitsRequirement: u32, 
                       requiredProperties: c.VkMemoryPropertyFlags) u32 {
    const memoryCount = pMemoryProperties.memoryTypeCount;
    var memoryIndex: u32 = 0;
    while (memoryIndex < memoryCount) : (memoryIndex += 1) {
        const memoryTypeBits = @shlExact(@as(u32, 1), @intCast(u5, memoryIndex));
        const isRequiredMemoryType = memoryTypeBitsRequirement & memoryTypeBits;

        const properties =
            pMemoryProperties.memoryTypes[memoryIndex].propertyFlags;
        const hasRequiredProperties =
            (properties & requiredProperties) == requiredProperties;

        if (isRequiredMemoryType > 0 and hasRequiredProperties)
            return memoryIndex;
    }
    assert(false);
    return 0xFFFFFFFF;
}

pub fn deviceAlloc(size: c.VkDeviceSize, memoryTypeIndex: u32) !c.VkDeviceMemory {
    var vkMemoryAllocateInfo = c.VkMemoryAllocateInfo {
    .sType = c.VkStructureType.VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
    .pNext = null,
    .allocationSize = size,
    .memoryTypeIndex = memoryTypeIndex,
  };
  var deviceMemory: c.VkDeviceMemory = undefined;
  try checkResult(c.vkAllocateMemory(vkContext.device, &vkMemoryAllocateInfo, null, &deviceMemory));
  return deviceMemory;
}

fn deviceFree(deviceMemory: c.VkDeviceMemory) void {
  c.vkFreeMemory(vkContext.device, deviceMemory, null);
}