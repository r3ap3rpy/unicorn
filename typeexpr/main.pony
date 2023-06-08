var x: (String, U64)
x = ("hi",33)
y = ("wow",78)
(var z, var i) = x
var k = x._1
var l = x._2

var x: (String, None)

type Map[K: (Hashable box & Comparable[K] box), V] is HashMap[K, V, HashEq[K]]

type Number is (Signed | Unsigned | Float)
type Signed is (I8 | I16 | I32 | I64)