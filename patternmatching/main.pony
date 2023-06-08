match x
| 2 => "int"
| 2.0 => "float"
| "2" => "string"
else
    "something else"
end
fun f(x: U32): String =>
    match x
    | 1 => "one"
    | 2 => "two"
    | 3 => "three"
    | 4 => "four"
    | 5 => "five"
    else
        "something else"
    end

class Foo
    var _x: U32
    new create(x: U32) =>
        _x = x
    fun eq(that: Foo): Bool =>
        _x == that._x

actor Main
    new create(env: Env) =>
        None
    
    fun f(x: Foo): String =>
        match x
        | Foo(1) => "one"
        | Foo(2) => "two"
        | Foo(3) => "three"
        | Foo(4) => "four"
        | Foo(5) => "five"
        else
            "something else"
        end

fun f(x: (U32|String|None)): String =>
    match x
    | None = "None"
    | 1 => "one"
    | 2 => "two"
    | 3 => "three"
    | 4 => "four"
    | "5" => "five"
    else
        "something else"
    end


class Cat
    fun pet() =>
        ...

class Fish
    fun pet() =>
        ...

class Snake
    fun pet() =>
        ...

type Animal is (Cat | Fish | Snake)

fun pet(animal: Animal) =>
    try
        let cat: Cat = animal as Cat
        cat.pet()
    end