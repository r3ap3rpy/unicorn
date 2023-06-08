use "collections"

primitive Time
    fun now(): (I64, I64)


use "time"
class Foo
    fun f() =>
        (var secs, var nsecs) = Time.now()


use "packageA"
use "packageB"
