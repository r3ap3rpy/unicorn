// true false

// u8, U128
// I8, I128
// F32, F64

//let my_unsigned: U32 = 42_000
//let my_float = F64(1.234)
//
//let my_dec: I32 = 1024
//let my_hex: I32 = 0x400
//let my_bin: I32 = 0b100000000
//
//let my_float_std: F64 = 0.0011111111
//let my_float_sc: F64 = 42.12E-4
//
//let cap_a: U8 = 'A'
//let newline: I32 = '\n'
//
//let multi: U64 = 'ABCD'
//
use "format"

actor Main
    new create(env: Env) =>
        let pony = "🐎"
        let pony_hex_escaped = "p\xF6n\xFF"

    env.out.print(pony + pony_hex_escaped)

let stacked_ponies = "
a
b
c
d
"

let triplet = 
    """
    Lorem 
    ipsum 
    whatever
    """

let my_lit_array = 
    [
        "First";"second"
        "third one is wider"
    ]