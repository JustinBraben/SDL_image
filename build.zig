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
    lib.linkLibC();

    lib.addIncludePath(b.path("include"));
    lib.defineCMacro("USE_STBIMAGE", "1");
    lib.defineCMacro("LOAD_BMP", "1");
    lib.defineCMacro("LOAD_GIF", "1");
    lib.defineCMacro("LOAD_JPG", "1");
    lib.defineCMacro("LOAD_PNG", "1");
    lib.defineCMacro("LOAD_SVG", "1");
    lib.defineCMacro("LOAD_TGA", "1");
    
    const sdl_dep = b.dependency("SDL", .{});
    const sdl_lib = sdl_dep.artifact("SDL2");
    lib.linkLibrary(sdl_lib);

    lib.addCSourceFiles(.{ .files = &generic_src_files });

    switch (t.os.tag) {
        .windows => {

        },
        .macos => {

        },
        else => {

        },
    }
    lib.installHeadersDirectory(b.path("include"), "SDL2", .{});
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