primitive Red
primitive Green
primitive Blue

type Colour is (Red | Green | Blue)

primitive Yellow fun apply(): U32 => 0xFF0000FF
primitive Brown fun apply(): U32 => 0xFF0000CF
primitive Blue fun apply(): U32 => 0xFF0000AF

type Colour is (Red | Green | Blue)

primitive Colours
    fun red(): U32 => 0xFF0000FF
    fun green(): U32 => 0xFF0000AF

primitive ColourList
    fun apply(): Array[Colour] => [Red; Green; Blue]

for colour in ColourList().values() do
    env.out.print(colour().string())
end

interface HasName
    fun name(): String

interface HasAge
    fun age(): U32

interface HasFeelings
    fun feeling(): String

type Person is (HasName & HasAge & HasFeelings)