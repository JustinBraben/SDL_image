const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const t = target.result;

    const lib = b.addStaticLibrary(.{
        .name = "SDL_Image",
        .target = target,
        .optimize = optimize,
    });

    const sdl_dep = b.dependency("sdl", .{
        .target = target,
        .optimize = .ReleaseSmall,
    });
    lib.linkLibrary(sdl_dep.artifact("SDL3"));

    lib.addIncludePath(.{ .path = "include"});
    lib.addIncludePath(.{ .path = "src"});
    lib.addCSourceFiles(.{ .files = &generic_src_files });
    lib.linkLibC();

    switch (t.os.tag) {
        .windows => {

        },
        .macos => {

        },
        else => {

        },
    }
    lib.installHeadersDirectory("include", "");
    b.installArtifact(lib);
}

const generic_src_files = [_][]const u8{
    "src/IMG_avif.c",
    "src/IMG_bmp.c",
    "src/IMG_gif.c",
    "src/IMG_jpg.c",
    "src/IMG_jxl.c",
    "src/IMG_lbm.c",
    "src/IMG_pcx.c",
    "src/IMG_png.c",
    "src/IMG_pnm.c",
    "src/IMG_qoi.c",
    "src/IMG_stb.c",
    "src/IMG_svg.c",
    "src/IMG_tga.c",
    "src/IMG_tif.c",
    "src/IMG_webp.c",
    "src/IMG_WIC.c",
    "src/IMG_xcf.c",
    "src/IMG_xpm.c",
    "src/IMG_xv.c",
    "src/IMG_xxx.c",
    "src/IMG.c",
};