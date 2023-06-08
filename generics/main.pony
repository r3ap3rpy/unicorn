class Foo[A: Any val]
    var _c: A
    new create(c: A) =>
        _c = c

    fun get(): A => _c
    fun ref set(c: A) => _c = c

class Bar[A: Any box = USize val]
    var _c: A
    new create(c: A) =>
        _c = c
    fun get(): A => _c
    fun ref set(c: A) => _c = c


primitive Fooo
    fun bar[A: Stringable val](a: A): String =>
        a.string()

actor Main
    new create(env: Env) =>
        let a = Foo[U32](42)
        env.out.print(a.get().string())
        let b = Foo[F64](55)
        env.out.print(b.get().string())
        let c = Foo[String]("Welcome")
        env.out.print(c.get().string())

        let e = Bar(42)
        let f = Bar[USize](64)
        let g = Bar[F32](1.5)