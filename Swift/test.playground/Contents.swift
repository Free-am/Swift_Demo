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


//// 函数和闭包
//func greet(_ person: String, on day: String) -> String {
//    let word = "Helo \(person), today is \(day)."
//    print(word)
//    return word
//}
//greet("Bob", on: "Monday")

////返回多个值(元组)
//func calculate(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
//    var min = scores[0]
//    var max = scores[0]
//    var sum = 0
//    
//    for score in scores {
//        if score > max {
//            max = score
//        } else if score < min {
//            min = score
//        }
//        sum += score
//    }
//    
//    return (min, max, sum)
//}
//
//let statics = calculate(scores: [5,3,100,3,9])
//print(statics.sum)
//print(statics.2)

////嵌套函数
//func returnFifteen() -> Int {
//    var y = 10
//    func add() {
//        y += 5
//    }
//    add()
//    return y
//}
//let x = returnFifteen()
//print(x)

//func method1() -> ((Int) -> Int) {
//    func method2(number: Int) -> Int {
//        return number + 1
//    }
//    return method2
//}
//var num = method1()
//num(7)

//func method3(num: [Int], condition: (Int) -> Bool) -> Bool {
//    for n in num {
//        if condition(n) {
//            return true
//        }
//    }
//    return false
//}
var arr = [20,19,7,12]
//func numTest(num: Int) -> Bool {
//    return num > 19
//}
//var state = method3(num: arr, condition: numTest(num:))
//print(state)
//
//
//var arr2 = arr.map({ (number: Int) -> String in
//    return "\(number)"
//})
//arr = arr.map({$0 + 10})
//print(arr2)
//
//let arr3 = arr.map({
//    if $0 % 2 != 0 {
//        return 0
//    }
//    return $0
//})
//print(arr3)
//
//let arr4 = arr.map({ $0*3 })
//print(arr4)

//var arr5: [[Int?]] = [[6,nil,18,33],[11,23,nil,4]]
//var arr6 = arr5.map({$0.flatMap({$0})})
//print(arr6)

//var arr5: [Int?] = [6,nil,18,33]
//var arr6 = arr5.compactMap{$0}
//print(arr6)

//let numbers2: [[Int?]] = [[1 ,2, 3],[4 , 5 ,6, nil]]
//let resultFlatmap2 = numbers2.flatMap({$0.compactMap({$0})})
//print(resultFlatmap2)//[3, 4, 5, 6, 7, 8]

//let sortedArr = arr.sorted{$0 < $1}
//print(sortedArr)


////对象和类
class Shape {
    init(num: Int = 0) {
        self.num = num
        print("init")
    }
    var num = 0
    func method() -> String {
        return "\(num + 8)"
    }
}

var shape = Shape()
let a = shape.method()
print(a)
print(shape.num)
