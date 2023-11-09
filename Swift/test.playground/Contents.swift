import Foundation

//// 字符串
//let a: Int = 1
//
//var b: String = "Tom"
//
//print("\(b)'s age is \(a)")
//
//let c = """
//    My name is Renchuanchuan,
//    And my age is 32.
//        Except for this line.
//    Double quotes (") can appear without being escaped.
//
//    I still have \(b) pieces of fruit.
//    """
//
//print(c)
//
//// 数组
//let emptyArray: [String] = []
//var d = ["a1","b2","c3",]
//let e = d[1]
//print("e = \(e)")
//d.append("d4")
//d.insert("N0", at: 0)
//d.remove(at: 2)
//print("d = \(d)")
//d = []
//print(d)
//
//// 字典
//let empryDic: [String: String] = [:]
//var f = ["a":"1","b":"2","c":"3",]
//f["d"] = "4"
//f.removeValue(forKey: "b")
//print(f)
//f = [:]
//print(f)

// 控制流
//let scores = [56, 75, 88, 90, 98]
//var testNum = 0
//var testStr = ""
//for score in scores {
//    let logo = if score > 60 {
//        "❀"
//    } else {
//        ""
//    }
//    if score > 60 {
//        testNum += 1
//    } else {
//        testNum += 0
//    }
//    testStr += logo
//}
//print("testNum = \(testNum)")
//print("testLogo = \(testStr)")
//
//var opStr: String? = "Hello"
//print("opStr = \(opStr)")
//print(opStr == nil)


// 可选值
//var opName: String? = "Tom"
//var greeting = "Hello!"
//if let opName {
//    greeting = "Hello,\(opName)"
//}
//print("greeting = \(greeting)")


//let nickName: String? = nil
//let fullName: String = "John Appleseed"
//let infoGreeting = "Hello! \(nickName ?? fullName)"
//print("infoGreeting = \(infoGreeting)")


// Switch
//let vegetable = "red pepper"
//switch vegetable {
//case "celery":
//    print("I like celery!")
//case "cucumber", "watercress":
//    print("I don't like these two things.")
//case let x where x.hasSuffix("pepper"):
//    print("It retains pepper~")
//default:
//    print("There is no any vegetables.")
//}


// for-in 嵌套循环
//let infoNumbers = [
//    "Amy": [2,3,5,7,11],
//    "Bob": [1,1,2,3,25],
//    "John": [1,4,9,16,25]
//]
//var largest = 0
//var person = ""
//for (name, arr) in infoNumbers {
//    for num in arr {
//        if num > largest {
//            largest = num
//            person = name
//        }
//    }
//}
//print("[\(person)] has the largest num [\(largest)]")


//// repeat while
//var n = 2
//while n < 0 {
//    n *= 2
//}
//print(n)

//// 至少执行一次
//var m = 2
//repeat {
//    m *= 2
//} while m < 0
//print(m)

//var p = 0
//for i in 0..<4 {
//    p += i
//}
//print(p)
