const std = @import("std");
const vk = @import("vulkan_core.zig");
const c = @import("vulkan.zig");

const l = @import("linear_allocator.zig");
const g = @import("device_allocator.zig");
const s =  @import("sukha.zig");

var window: *c.GLFWwindow = undefined;

pub fn initMongoose(width: u32, height: u32) !void {
    if (c.glfwInit() == 0) return error.GlfwInitFailed;

    c.glfwWindowHint(c.GLFW_CLIENT_API, c.GLFW_NO_API);
    c.glfwWindowHint(c.GLFW_RESIZABLE, c.GLFW_FALSE);

    window = c.glfwCreateWindow(@intCast(i32, width), @intCast(i32, height), "Zig Vulkan Triangle", null, null) orelse return error.GlfwCreateWindowFailed;

    const pageAllocator = std.heap.page_allocator;
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    

    try vk.initVulkan(pageAllocator, window, width, height);
    var gpa = try g.DeviceAllocator.new(pageAllocator, 12, 1);
    var memory = try gpa.alloc(12, 1);
    try gpa.free(memory);

    var linearAlloctor = try l.LinearAllocator.new(256*1024, 1024, c.VK_BUFFER_USAGE_VERTEX_BUFFER_BIT | c.VK_BUFFER_USAGE_INDEX_BUFFER_BIT);
    const b = try linearAlloctor.alloc(10);

    const sukha = s.Sukha{};
}

pub fn deinitMongoose() void {
    c.glfwDestroyWindow(window);
    c.glfwTerminate();
}

pub fn frame() void {
    while (c.glfwWindowShouldClose(window) == 0) {
        c.glfwPollEvents();
    }
}
