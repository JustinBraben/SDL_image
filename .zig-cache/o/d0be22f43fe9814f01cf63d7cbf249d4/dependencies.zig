pub const packages = struct {
    pub const @"122046c6dcdcf941e6e5b1e8fa273185d04420e56436d47b906308eaf70208222f59" = struct {
        pub const build_root = "C:\\Users\\Justin\\AppData\\Local\\zig\\p\\122046c6dcdcf941e6e5b1e8fa273185d04420e56436d47b906308eaf70208222f59";
        pub const build_zig = @import("122046c6dcdcf941e6e5b1e8fa273185d04420e56436d47b906308eaf70208222f59");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
            .{ "sdl_linux_deps", "122086d80e01bd753df35351c1203e08a0a18f4a4ae3b4a10e91b000ab4c15e51ea0" },
        };
    };
    pub const @"122086d80e01bd753df35351c1203e08a0a18f4a4ae3b4a10e91b000ab4c15e51ea0" = struct {
        pub const available = false;
    };
};

pub const root_deps: []const struct { []const u8, []const u8 } = &.{
    .{ "sdl", "122046c6dcdcf941e6e5b1e8fa273185d04420e56436d47b906308eaf70208222f59" },
};
