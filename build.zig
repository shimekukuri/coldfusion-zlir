const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const vii_module = b.dependency("vii", .{ .target = target, .optimize = optimize }).module("vii");
    const plugin_core_module = b.dependency("zlir_plugin_core", .{ .target = target, .optimize = optimize }).module("zlir_plugin_core");

    _ = b.addModule("coldfusion_zlir", .{ .root_source_file = b.path("src/coldfusion_zlir.zig"), .target = target, .optimize = optimize, .imports = &.{ .{ .name = "vii", .module = vii_module }, .{ .name = "plugin_core", .module = plugin_core_module } } });
}
