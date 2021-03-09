usingnamespace @import("vulkan_core.zig");
usingnamespace @import("vulkan_utils.zig");
usingnamespace @import("linear_allocator.zig");

pub const Sukha = struct {
  uniformAllocator: LinearAllocator,
  vertexIndexAllocator: LinearAllocator,
  storageAllocator: LinearAllocator,
  storageImageAllocator: LinearAllocator,
  stagingAllocator: LinearAllocator,
};
