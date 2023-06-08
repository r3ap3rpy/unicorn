object is Hashable
    fun apply(): String => "Hi"
    fun hash(): USize => this().hash()
end

use "collections"
class Foo
    fun foo(str: String): Hashable =>
        object is Hashable
            let s: String = str
            fun apply(): String => "Hi"
            fun hash(): USize => s.hash()
        end

{(s: String): String => "lambda: " + s}

object
    fun apply(s: String): String => "lambda: " + s
end

object 
    be apply() => env.out.print("hi")
end