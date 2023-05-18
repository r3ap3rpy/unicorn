// marker values
primitive OpenedDoor
primitive ClosedDoor

//enumeration
type DoorState is (OpenedDoor | ClosedDoor)

//collection of functions
primitive BasicMath
    fun add(a: U64, b: U64): U64 =>
        a + b
    
    fun multiply(a: U64, b: U64): U64 =>
        a * b

actor Main
    new create(env: Env) => 
        let doorState : DoorState = ClosedDoor
        let isDoorOpen : Bool = match doorState
            | OpenedDoor => true
            | ClosedDoor => false
        end
        env.out.print("Is the door open? " + isDoorOpen.string())
        env.out.print("2 + 3 = " + BasicMath.add(2,3).string())

// Built in primitives -> Bool, ISize, ILong, I8, I16, I32, I64, I128
// USize, ULong, U8, U16, U32, U64, U128
// F32, F64