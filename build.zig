const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const sdl_image_lib = b.addStaticLibrary(.{
        .name = "SDL3_image",
        .target = target,
        .optimize = optimize,
    });
    sdl_image_lib.linkLibC();

    sdl_image_lib.addIncludePath(b.path("include"));
    sdl_image_lib.addIncludePath(b.path("src"));
    sdl_image_lib.root_module.addCMacro("USE_STBIMAGE", "1");
    sdl_image_lib.root_module.addCMacro("LOAD_BMP", "1");
    sdl_image_lib.root_module.addCMacro("LOAD_GIF", "1");
    sdl_image_lib.root_module.addCMacro("LOAD_JPG", "1");
    sdl_image_lib.root_module.addCMacro("LOAD_PNG", "1");
    sdl_image_lib.root_module.addCMacro("LOAD_SVG", "1");
    sdl_image_lib.root_module.addCMacro("LOAD_TGA", "1");

    const sdl_dep = b.dependency("sdl", .{
        .target = target,
        .optimize = optimize,
    });
    const sdl_lib = sdl_dep.artifact("SDL3");
    sdl_image_lib.linkLibrary(sdl_lib);

    sdl_image_lib.addCSourceFiles(.{ .files = &generic_src_files });
    sdl_image_lib.installHeadersDirectory(b.path("include/SDL3_image"), "SDL3_image", .{});
    b.installArtifact(sdl_image_lib);
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