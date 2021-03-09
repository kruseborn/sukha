const pr = @import("std").debug.print;
const t = @import("test.zig").openConnectiion;

fn total(values : []const u8) usize {
    var count: usize = 0;
    for (values) |v| count += v;
    return count;
}

const Vec3 = struct {
    x: f32, y: f32, z: f32
};

pub fn main() void {
    pr("Hello {s}!\n", .{"World"});
    
    const array =[_]u8{1,2,3,4,5};
    const slice = array[0..3];
    pr("slice total: {}\n", .{total(slice)});

    const my_vec = Vec3{.x = 0, .y = 100, .z = 50};

    pr("{}\n", .{my_vec});
    t();
}
