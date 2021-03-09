const mg = @import("mongoose.zig");


pub fn main() !void {
    try mg.initMongoose(800, 600);
    mg.frame();
    mg.deinitMongoose();
}

