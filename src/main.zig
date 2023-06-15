const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const x: i32 = 20;
    var y: u32 = 10;
    var s: u32 = 10;

    _ = x;
    _ = y;
    _ = s;

    const a = [5]u8{ 'h', 'e', 'l', 'l', 'o' };
    _ = a.len;
    // print("length: {}\n", length);

    const string = [_]u8{ 'a', 'b', 'c' };

    for (string) |character, index| {
        // _ = character;
        _ = index;
        print("Hello, {s}!\n", character);
    }
}

test "for" {
    //character literals are equivalent to integer literals
    const string = [_]u8{ 'a', 'b', 'c' };

    for (string) |character, index| {
        // _ = character;
        _ = index;
        print("Hello, {s}!\n", .{character});
    }

    for (string) |character| {
        _ = character;
    }

    for (string) |_, index| {
        _ = index;
    }

    for (string) |_| {}
}