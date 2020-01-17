
import Extensions

let a: [Int16] = ["a", "b", "c", "d", "e"]
let b: [UInt32] = ["a", "b", "c", "d", "e"]

// CHECK: Foo2 99!
print(Int8(99).foo2())
// CHECK: Foo2 99!
//extension UInt32: P2 {}
print(UInt32(99).foo2())
// CHECK: Foo!
print(Int8(99).foo())
// CHECK: Foo!
print(Int32(99).foo())
// CHECK: Foo!
print(UInt32(99).foo())

// CHECK: [97, 98, 99, 100, 101]
print(a)
// CHECK: [97, 98, 99, 100, 101]
print(b)
// CHECK: ["Foo2 97!", "Foo2 98!", "Foo2 99!", "Foo2 100!", "Foo2 101!"]
print(a.map {$0.foo2()})
// CHECK: ["Foo!", "Foo!", "Foo!", "Foo!", "Foo!"]
print(b.map {$0.foo()})
// CHECK: ["Foo2 97!", "Foo2 98!", "Foo2 99!", "Foo2 100!", "Foo2 101!"]
print(b.map {$0.foo2()})

public func use<T>(_ value: T) -> T
  where T : FixedWidthInteger {
    return value + "1" // ← Used ExpressibleByUnicodeScalarLiteral
}

print(use(1))

let u = UInt32(99)

func aaa(_ b: P2) {
  print(b.foo2())
}

aaa(u)

aaa(88.0)

print(99.0.foo2())

let v = b.map { $0 as P2 }.map { $0.foo2() }
print(v)

print(99.bar)

A().f()

