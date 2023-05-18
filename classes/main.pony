class Animal
    let name: String
    var _age: U64

    new create(name': String) =>
        name = name'
        _age = 1

    new aging(name' : String, age': U64) =>
        name = name'
        _age = age'
    
    fun play(): String => "Wofwof"
    fun ref set_age(to: U64): U64 => _age = to

    fun _final()

let defaultAnimalAge = Animal("Bab")
let agedAnimal = Animal("Boris",3)

class Domesticated
    let _dog: Animal