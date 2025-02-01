pub const packages = struct {
    pub const @"12201b123429d79e357e42f771ff2af943c2939150eb93713282c5b1b3da6d2379c6" = struct {
        pub const build_root = "C:\\Users\\Justin\\AppData\\Local\\zig\\p\\12201b123429d79e357e42f771ff2af943c2939150eb93713282c5b1b3da6d2379c6";
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
    pub const @"1220c3a9f874bda11563c0f1e7fa5bfab0f7378af40310dcd49426e7d1afe9483fb6" = struct {
        pub const build_root = "C:\\Users\\Justin\\AppData\\Local\\zig\\p\\1220c3a9f874bda11563c0f1e7fa5bfab0f7378af40310dcd49426e7d1afe9483fb6";
        pub const build_zig = @import("1220c3a9f874bda11563c0f1e7fa5bfab0f7378af40310dcd49426e7d1afe9483fb6");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
        };
    };
};

pub const root_deps: []const struct { []const u8, []const u8 } = &.{
    .{ "sdl", "1220c3a9f874bda11563c0f1e7fa5bfab0f7378af40310dcd49426e7d1afe9483fb6" },
    .{ "sdl_image", "12201b123429d79e357e42f771ff2af943c2939150eb93713282c5b1b3da6d2379c6" },
};
