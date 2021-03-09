const std = @import("std");
const path = std.fs.path;
const Builder = std.build.Builder;

pub fn build(b : *Builder) !void {
  const mode = b.standardReleaseOptions();
  const exe = b.addExecutable("zig-vulkan-triangle", "src/main.zig");

  exe.setBuildMode(mode);
  exe.addIncludeDir("C:/libs/glfw-3.3.2.bin.WIN64/include");
  exe.addLibPath("C:/libs/glfw-3.3.2.bin.WIN64/lib-vc2019/");
  exe.addLibPath("C:/VulkanSDK/1.2.162.0/Lib/");
  exe.linkSystemLibrary("glfw3dll");
  exe.linkSystemLibrary("vulkan-1");
  exe.linkSystemLibrary("c");
  exe.setOutputDir("out");

  b.default_step.dependOn(&exe.step);
  exe.install();

  const run_step = b.step("run", "Run the app");
  const run_cmd = exe.run();
  run_step.dependOn(&run_cmd.step);

  try addShader(b, exe, "shader.vert", "vert.spv");
  try addShader(b, exe, "shader.frag", "frag.spv");
}

fn addShader(b : *Builder, exe: anytype, in_file: [] const u8, out_file: [] const u8) !void {
  const dirname = "shaders";

  const full_in = try path.join(b.allocator, &[_][]const u8{ dirname, in_file });
  const full_out = try path.join(b.allocator, &[_][]const u8{ dirname, out_file });

  const run_cmd = b.addSystemCommand(&[_][]const u8{
      "glslc",
      "-o",
      full_out,
      full_in,
    });
    exe.step.dependOn(&run_cmd.step);
}