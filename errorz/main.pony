try
    calla()
    if not callb() then error end
    callc()
else
    calld()
end

fun`factorial(x: I32):I32 ? =>
    if x < 0 then error end
    if x == 0 then
        1
    else
        x * factorial(x - 1) ?
    end

try
    calla()
    if not callb() then error end
    callc()
else
    calld()
then
    calle()
end

with obj = SomeObject() do
    obj.do_something()
end

class SomeObject
    fun dispose() =>
        // release resources

with obj = SomeObject(), otherobj = SomeOtherObj() do
    obj.do_something()
end
