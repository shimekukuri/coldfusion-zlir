const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const vii_module = b.dependency("vii", .{ .target = target, .optimize = optimize }).module("vii");

    _ = b.addModule("coldfusion_zlir", .{ .root_source_file = b.path("src/coldfusion_zlir.zig"), .target = target, .optimize = optimize, .imports = &.{.{ .name = "vii", .module = vii_module }} });
}
