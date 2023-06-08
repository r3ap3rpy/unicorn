class Name is Stringable

interface box Stringable
    fun string(): String iso^

primitive ExecveError
    fun string(): String iso^ => "ExecveError".clone()

trait Named
    fun name(): String => "Bob"

trait Bald
    fun haid(): Bool => false

class Bob is (Named & Bald)