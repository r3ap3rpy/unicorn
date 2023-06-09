actor Aadvark
    let name: String
    var _hunger_level: U64 = 0

    new create(name':String) =>
        name = name'

    be eat(amount: U64) =>
        _hunger_level = _hunger_level - amount.min(_hunger_level)

actor Main
    new create(env: Env) =>
        call_me_later(env)
        env.out.print("This is printed!")

    be call_me_later(env: Env) =>
        env.out.print("This is printed last!")