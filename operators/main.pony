//1 + 2
//a < b
//
//x + y
//x.add(y)
class Pair
    var _x: U32 = 0
    var _y: U32 = 0

    new create(x: U32, y: U32) =>
        _x = x
        _y = y

    fun add(other: Pair) =>
        Pair(_x + other._x, _y + other._y)


class Foo
    fun foo() =>
        var x = Pair(1,2)
        var y = Pair(3,4)
        var z = x + y

~x
x.neg()

1 + 2 * 3 // fail to compile
1 + 2 + 3 // this will do just fine