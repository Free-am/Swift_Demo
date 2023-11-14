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
//var arr = [20,19,7,12]
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
//class Shape {
//    var numberOfSides = 0
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) sides."
//    }
//}
//
//var shape = Shape()
//shape.numberOfSides = 7
//var shapeDescription = shape.simpleDescription()
//
////// 初始化
//class NamedShape {
//    var numberOfSides: Int = 0
//    var name: String
//    
//    init(numberOfSides: Int, name: String) {
//        self.numberOfSides = numberOfSides
//        self.name = name
//    }
//    
//    func simpleDescription() -> String {
//        return "A shape named \(name) with \(numberOfSides) sides"
//    }
//}
//
//var nameShape = NamedShape(numberOfSides: 9, name: "Square")
//var simpleDescription = nameShape.simpleDescription()
//
////// 子类继承
//class Square: NamedShape {
//    var sideLength: Double
//    
//    init(sideLength: Double, name: String, numberOfSide: Int) {
//        self.sideLength = sideLength
//        super.init(numberOfSides: numberOfSide, name: name)
//    }
//    
//    func area() -> Double {
//        return sideLength * sideLength
//    }
//    
//    override func simpleDescription() -> String {
//        return "A shape named \(name) with \(numberOfSides) sides of length \(sideLength)"
//    }
//}
//
//let test = Square(sideLength: 4, name: "Square", numberOfSide: 12)
//test.area()
//test.simpleDescription()
//
////// getter和setter
//class EquilateralTriangle: NamedShape {
//    var sideLength: Double = 0
//    
//    init(sideLength: Double, name: String) {
//        self.sideLength = sideLength
//        super.init(numberOfSides: 3, name: name)
//    }
//    
//    var perimeter: Double {
//        get {
//            return 3.0 * sideLength
//        }
//        set {
//            sideLength = newValue / 3.0
//        }
//    }
//    
//    override func simpleDescription() -> String {
//        return "A shape named \(name) with \(numberOfSides) sides of length \(sideLength)."
//    }
//}
//
//var triangle = EquilateralTriangle(sideLength: 3.1, name: "Triangle")
//print(triangle.perimeter)
//triangle.perimeter = 9.9
//print(triangle.sideLength)
//print(triangle.simpleDescription())
//
//
//class TriangleAndSquare {
//    var square: Square {
//        willSet {
//            triangle.sideLength = newValue.sideLength
//        }
//    }
//    var triangle: EquilateralTriangle {
//        willSet {
//            square.sideLength = newValue.sideLength
//        }
//    }
//    init(size: Double, name: String, sideLength:Double, numberOFSides:Int) {
////        self.square = square
////        self.triangle = triangle
//        self.square = Square(sideLength: sideLength, name: name, numberOfSide: numberOFSides)
//        self.triangle = EquilateralTriangle(sideLength: sideLength, name: name)
//    }
//}
//
//var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape", sideLength: 2, numberOFSides: 10)
//print(triangleAndSquare.square.sideLength)
//print(triangleAndSquare.triangle.sideLength)
//triangleAndSquare.square = Square(sideLength: 50, name: "large square", numberOfSide: 5)
//print(triangleAndSquare.triangle.sideLength)
//
//let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square", numberOfSide: 4)
//let sideLength = optionalSquare?.sideLength
//print(optionalSquare?.name)


//// 枚举、结构体
//enum Rank: Int, CaseIterable {
//    case ace = 1
//    case two, three, four, five, six, seven, eight, nine, ten
//    case jack, queue, king
//    case red_joker, black_joker
//    
//    func simpleDescription() -> String {
//        switch self {
//        case .ace:
//            return "A"
//        case .jack:
//            return "J"
//        case .queue:
//            return "Q"
//        case .king:
//            return "K"
//        case .red_joker:
//            return "大王"
//        case .black_joker:
//            return "小王"
//        default:
//            return String(self.rawValue)
//        }
//    }
//}
//
//let ace = Rank.king
//let aceRawValue = ace.rawValue
//
//func judgeBiger(rank1: Rank, rank2: Rank) -> Bool {
//    return rank1.rawValue > rank2.rawValue
//}
//
//let state = judgeBiger(rank1: .king, rank2: .queue)
//
//
//enum Suit: String, CaseIterable {
//    case spades, hearts, diamonds, clubs
//    
//    func simpleDescription() -> String {
//        switch self {
//        case .spades:
//            return "♠"
//        case .hearts:
//            return "♥"
//        case .diamonds:
//            return "♦"
//        case .clubs:
//            return "♣"
//        }
//    }
//}
//let hearts = Suit.hearts
//let heartsDescription = hearts.simpleDescription()
//
//func color(suit: Suit) -> String {
//    switch suit {
//    case .spades, .clubs:
//        return "黑色"
//    case .hearts, .diamonds:
//        return "红色"
//    }
//}
//color(suit: hearts)
//
//
////// 请求服务器时间
//enum ServerResponse {
//    case result(String, String)
//    case nodata(String)
//    case failure(String)
//}
//
//let response1 = ServerResponse.result("6:00 am", "8:12 pm")
//let response2 = ServerResponse.nodata("[空]")
//let response3 = ServerResponse.failure("请求超时！")
//
//switch response1 {
//case let .result(sunrise, sunset):
//    print("日出时间是 \(sunrise) ，日落时间是 \(sunset)")
//case let .nodata(msg):
//    print("请求成功，但数据为空... \(msg)")
//case let .failure(message):
//    print("失败...  \(message)")
//}
//
////// 结构体
//struct Card {
//    var rank: Rank
//    var suit: Suit
//    func simpleDescription() -> String {
//        return "\(suit.simpleDescription()) \(rank.simpleDescription())"
//    }
//}
//
//let threeOfSapdes = Card(rank: .three, suit: .spades)
//let desc = threeOfSapdes.simpleDescription()
//
////// 打印所有扑克牌
//func allCards() -> [String] {
//    var cardArray: [String] = []
//    for suit in Suit.allCases {
//        let suitName = suit.simpleDescription()
//        for rank in Rank.allCases {
//            let rankName = rank.simpleDescription()
//            if !rankName.contains("王") {
//                cardArray .append(suitName + rankName)
//            }
//        }
//    }
//    cardArray.append("大王")
//    cardArray.append("小王")
//    return cardArray
//}
//
//let arr = allCards()
//print(arr)


