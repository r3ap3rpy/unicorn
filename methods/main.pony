class C
    fun add(x: U32, y: U32): U32 =>
        x + y
    fun nop() =>
        add(1,2) // pointless, we ignore the result

class Foo
    var _x: U32

    new create() =>
        _x = 0

    new from_int(x: U32) =>
        _x = x

    new from_default(x: U32 = 0, y: U32 = 0) =>
        _x = x
        _y = y

class Bar
    fun f() =>
        var a: Foo = Foo.create()
        var b: Foo = Foo.from_int(10)
        var c: Foo = Foo.from_default(where x = 10, y = 20)

primitive Printer
    fun print_two_strings(out: StdStream, s1: String, s2: String) =>
        out.>print(s1).>print(s2)
        //out.print(s1)
        //out.print(s2)

use "collections"

actor Main
    new create(env: Env)=>
        let list_of_numbers = List[U32].from([1;2;3;4;5])
        let is_odd = {(n:U32):Bool => (n%2)== 1}
        for odd in list_of_numbers.filter(is_odd).values() do
            env.out.print(odd.string())