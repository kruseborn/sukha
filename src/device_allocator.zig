const std = @import("std");
const mem = std.mem;
const c = @import("vulkan.zig");
const assert = std.debug.assert;
const Allocator = std.mem.Allocator;

usingnamespace @import("vulkan_utils.zig");
usingnamespace @import("vulkan_core.zig");

pub const DeviceMemory = struct {
  memory: c.VkDeviceMemory,
  offset: c.VkDeviceSize
};

pub const Error = error{OutOfMemory};

pub const DeviceAllocator = struct {
  cpuAllocator: *Allocator,
  deviceMemory: c.VkDeviceMemory,
  head: ?*HeapNode,

  const HeapNode = struct {
    offset: c.VkDeviceSize,
    alignedOffset: c.VkDeviceSize,
    size: c.VkDeviceSize,
    prev: ?*HeapNode,
    next: ?*HeapNode,
    free: bool,
  };

  pub fn new(cpuAllocator: *Allocator, size: c.VkDeviceSize, memoryTypeIndex: u32) !DeviceAllocator {
    var gpa = DeviceAllocator{
      .cpuAllocator = cpuAllocator,
      .deviceMemory = try deviceAlloc(size, memoryTypeIndex),
      .head = try cpuAllocator.create(HeapNode),
    };
    gpa.head.?.* = .{
      .offset = 0,
      .alignedOffset = 0,
      .size = size,
      .prev = null,
      .next = null,
      .free = true
    };

    return gpa;
  }

  pub fn deinit(self: *DeviceAllocator) !void {
    checkResult(c.vkDeviceWaitIdle(vkContext.device));
    utils.deviceFree(self.deviceMemory);
  }

  pub fn alloc(self: *DeviceAllocator, size: c.VkDeviceSize, alignment: c.VkDeviceSize) !DeviceMemory {

    var firstFit: *HeapNode = undefined;
    var currentNode: ?*HeapNode = self.head;
    
    while(currentNode) |node|: (currentNode = node.next) {
      if(node.free == false)
        continue;
      const alginMod = node.offset % alignment;
      const alignPadding = if(alginMod == 0) 0 else alignment - alginMod;
      const alignedSize = size + alignPadding;

      if(node.size == alignedSize) {
        node.free = false;
        node.alignedOffset = node.offset + alignPadding;
        return DeviceMemory{ 
          .memory = self.deviceMemory,
          .offset = node.alignedOffset
        };
      } else if(node.size > alignedSize) {
        var newNode = try self.cpuAllocator.create(HeapNode);
        newNode.* = node.*;
        newNode.prev = node.prev;
        newNode.next = node;
        if(node.prev != null) {
          node.prev.?.next = newNode;
        }
        node.prev.? = newNode;
        newNode.free = false;

        newNode.size = alignedSize;
        node.size -= alignedSize;
        node.offset += alignedSize;

        if (node == self.head) {
          self.head = newNode;
        }
        node.alignedOffset = newNode.offset + alignPadding;
        return DeviceMemory{
           .memory = self.deviceMemory, 
           .offset = node.alignedOffset
        };
      }
    }
    return error.OutOfMemory;
  }

  pub fn free(self: *DeviceAllocator, deviceMemory: DeviceMemory) !void {
    var currentNode: ?*HeapNode = self.head;
    while(currentNode != null) : (currentNode = currentNode.?.next) {
      var node: *HeapNode = currentNode.?;
      if(node.alignedOffset == deviceMemory.offset) {
          break;
      }
      assert(node.free == false);
      node.alignedOffset = node.offset;
      node.free = true;

      if(node.prev != null and node.prev.?.free) {
        var prev = node.prev.?;
        prev.next = node.next;
        if (node.next != null) {
          node.next.?.prev = prev;
        }
         prev.size += node.size;
         self.cpuAllocator.destroy(node);
         node = prev;
      }
      if(node.next != null and node.next.?.free) {
          var next = node.next.?;
          if(next.next != null) {
            next.next.?.prev = node;
          }
          node.next = next.next;
          node.size += next.size;
          self.cpuAllocator.destroy(next);
      }
    }
  }
};

