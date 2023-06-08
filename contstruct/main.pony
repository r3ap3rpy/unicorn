if a > b then
    env.out.print("a is bigger")
end

if a > b then
    env.out.print("a is bigger")
else
    env.out.print("a  is smaller")
end

if a > b then
    env.out.print("a is bigger")
else
    if a != 0 then
        env.out.print("a  is not zero")
    else
        env.out.print("a is zero")
end

if a > b then
    env.out.print("a is bigger")
elseif a > b then
    env.out.print("a  is smaller")
else
    env.out.print("They are equal!")
end

x = 1 + if lots then 100 else 2 end

var x: (String | Bool) =
    if friendly then
        "hello"
    else
        false
    end

var count: U32 = 1
while count <= 10 do
    env.out.print(count.string())
    count = count + 1
end

var name =
    while moreNames() do
        var name' = getName()
        if name' == "Jack" or name' ("Jill") then
            break name'
        end
        name'
    else
        "Herbert"
    end

for name in ["Bob","Daniel","Gabriel"].values() do
    env.out.print(name)
end

actor Main
    new create(env: Env) =>
        var counter = U64(1)
        repeat
            env.out.print("Hello!")
            counter = counter + 1
        until counter > 7 end