import UIKit


// 初始化：字面量、初始化器语法、isEmpty检查空串
// 单行字面量：" " 包裹固定顺序
// 多行字面量：""" """ 换行符结尾\
// 扩展字符串分割符（Raw String)
// #""#   ##1\##n2\n3"##

let str = #"123"#
let strr = ##"1\##n2\##n3"##
let strrr = "1\n2\n3\n"
print("strrr = \(strrr)")

var str1 = ""
var str2 = String()
if str2.isEmpty {
    print("str2 is empty.")
}

let softWrappedQuotation = """
    1. 多行字符串字面量是用三个双引号引起来的一系列字符
        2. 多行字符串字面量把所有行包括在引号内，开始和结束默认\
不会有换行符
    3. 当你代码中在多行字符串字面量里包含了换行
"""
print(softWrappedQuotation)


// 字符串可变性
// 值类型：赋值会被复制过去（复制内常量和变量也一样）
// Swift：var 可改 ，let 不可改
// OC：NSMutableString , NSString
// 操作字符：for in char    Char类型
// 字符串插值：类似stringWithFormat    (\str)   \#(6 * 7)
let str3 = #"6 * 7 = \#(6 * 7)"#
let str4 = "6 * 7 = \(6 * 7)"
print("str3 = \(str3)")
print("str4 = \(str4)")


// 字符串索引（char位置）结构体类型
// String.index    startIndex    endIndex
// insert  remove

var welcome = "hello"
print(welcome[welcome.startIndex])                      // h
print(welcome[welcome.index(before: welcome.endIndex)])     // o
welcome.remove(at: welcome.startIndex)                  // ello
welcome.insert("h", at: welcome.startIndex)              // hello
welcome.remove(at: welcome.index(before: welcome.endIndex)) // hell
welcome.insert("o", at: welcome.endIndex)               // hello
print(welcome)
let wIndex = welcome.firstIndex(of: "l") ?? welcome.endIndex
let subStartStr = welcome[..<wIndex]
let subEndStr = welcome[wIndex..<welcome.endIndex]
print(subStartStr, subEndStr)


// 字符串子串
// 下标、prefix：Substring类型（拥有String大部分方法）
// 子字符串会重用一部分原字符串的内存
// 可以转为String类型  String(Substring)
let range = welcome.index(welcome.endIndex, offsetBy: -1)..<welcome.endIndex
welcome.removeSubrange(range)
print(welcome)


// 字符串拼接
// 使用加运算符 + 创建新字符串
// 使用加赋值符号 += 在已经存在的 String 值末尾追加一个 String 值
// 使用 String 类型的 append() 方法来可以给一个 String 变量的末尾追加 Character 值 或 String值
var sf = "a"
sf.append("b" as Character)
sf.append("cde" as String)

// 字符串里的特殊字符
// 转移特殊字符\0(空字符串)， \(反斜杠)， \t(水平制表符)， \n(换行符)， \r(回车符)， "(双引号)， '(单引号)
// 任意的Unicode标量，写作\u{n}，里面的n是一个1-8位的16进制数字，起始是合法Unicode值
// 可以在多行字符串字面量中包含双引号（“）而不需要转移，要在多行字符串包含文本“”，转移至少一个双引号

let strTabs = "hello\t\"Swift\""
let dollarSymbol = "\u{24}"
let whiteHeart = "\u{2665}"
let sparkingHeart = "\u{1F496}"


// 字符串比较
// 相等  ==   !=
// 前缀  hasPrefix
// 后缀  hasSuffix

let word = "hello, world"
print(word != welcome)
print(word == "hello, world")
print(word.hasPrefix("he"))
print(word.hasSuffix("wo"))
