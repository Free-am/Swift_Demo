//import Foundation

let d: String = "D"
let 🐂 = "cow"
var x = 0.0, y = 1.0, z = 2.0
var a, b, c: Float
let e = "🐴";print("\(e)")
var value = UInt8.min + UInt8.max
let f = 6
print(f.customMirror.subjectType)
let g = 0xC.3p0
print(g)
let h = 1_0_0_2.0_0_1
print(Int(h)+3)
let i = h + Double(f)
print(i)
typealias AudioSample = UInt16
var found = AudioSample.min
let http404Error = (code:404, msg:"Not Found")
print(http404Error)
let (code, _) = http404Error
print(code, http404Error.1, http404Error.msg)
var j = "123"
let k: Int? = Int(j)
print(k ?? 123)
if k != nil {
    print("有值")
} else {
    print("没值")
}
var m: Int?
let n = m ?? 0
print(n)
m = 8
if let m {
    print("有值", m.customMirror.subjectType)
} else {
    print("没值")
}
if let a = Int("1"), let b = Int("2"), a < b && b < 10 {
    print("\(a) < \(b) < 10")
}
let o: String? = nil
let p = "Hello, " + (o ?? "Amy") + "!"
print(p)
let q = "123"
let r = Int(q)
//let s = r!
guard let t = r else {
    fatalError("r is nil")
}
var u: Int! = 0
//u = 8
print("u = \(u!)")
if u != nil {
    print("u有值")
}
if let uu = u {
    print("u确实有值")
}

enum MyError: Error {
    case msg(String)
}

func canThrowAnError() throws {
    throw MyError.msg("我错了")
}

do {
    try canThrowAnError()
    print("没错误")
} catch {
    print("有错误")
}

let age = 3
if age > 18 {
    print("您已经成年了！")
} else if age >= 0 {
    print("您是未成年儿童！")
} else {
    assertionFailure("数据出错，年龄不可能是负数！")
}

func test<T1, T2>(arg1: T1, arg2: T2) {
    print(arg1, arg2)
}
test(arg1: 1, arg2: "good")



//宠物证协议
protocol PetCard {}
//宠物
class Pet{}

//收养宠物:必须是Pet的子类,并且实现了PetCard协议
func adoptionPet(T: Pet & PetCard){
    
}

class Dog: Pet & PetCard{
}

class Pig: Pet{}

adoptionPet(T: Dog())
//adoptionPet(T: Pig())

precondition(age > 0, "年龄必须为正数！")
