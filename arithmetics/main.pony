// unsigned wrap-around on overflow
U32.max_value() + 1 == 0
// signed values
I32.min_value() - 1 == I32.max_value()

10 / 0 == 0

I32(12).f32()

I64.max_value().f32_unsafe()


//partial arithmetic
let result = 
    try
        USize.max_value() +? env.args.size()
    else
        env.out.print("Overflowing!")
    end

//checked arithmetic
let result =
    match USize.max_value().addc(env.args.size())
    | (let result: USize, false) =>
        ...
    | (_, true) = >
        env.out.print("overflow detected!")
    end

// IEEE 754
