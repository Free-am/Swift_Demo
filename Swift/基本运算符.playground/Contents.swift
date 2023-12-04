import Foundation

// 基本运算符
// 支线赋值、算术和比较等操作

let a = UInt8.max
var b = a &+ 1
print(b)

let c = -9 % 4
print(c)

let d = "apple"
let e = "bird"
print(d < e ? "<" : ">")
("blue", false) == ("purple", true)
(1,"2",3,"4",5,"6") < (8,"9",10,"11",12,"13")

let f = ["a","b","c","d","e"]
for i in 0..<f.count {
    print("index = \(i), value = \(f[i])")
}
for name in f[2...] {
    print("name = \(name)")
}

let range = ...5
range.contains(7)
range.contains(2)
range.contains(-111)

if !false && true || false {
    print("true")
}
