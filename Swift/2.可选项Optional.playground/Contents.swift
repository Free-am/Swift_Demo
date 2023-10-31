import UIKit

/*
 为什么需要optional
 OC:
 1.nil是无类型的指针   （老师nil、学生nil  无法区分）
 2.数组、字典、集合不允许放 nil
 3.运行时，所有变量都可能为nil
 4.只能用在对象上，其他特殊值 NSNotFound 用不了
 
 
 Optional：变量后面加？
 意义：1.这里有个值，等于x    2.这里没有值

 OC：nil是一个指向不存在对象的指针
 Swift：nil不是指针，是一种缺少类型，任何类型的可选项都可以设置为nil，不仅是对象类型

 只有可选项可以设置为nil


 其实是标准库里的enum类型。(用标准库实现语言特性的典型)
 枚举值为：nil 或 泛型
 optional泛型属性  unsafelyUnwrapped

 展开是通过 unsafelyUnwrapped 获取可选项的值
 */

 let str: String! = "abc"
 if str != nil {
     let count = str.unsafelyUnwrapped.count
     print(count)
 }

//【绑定】
//1.可以用绑定来判断是否包含值，如果包含就把值赋给一个变量或常量。
//2.可以与if或while来检查内部的值，并赋给一个变量或常量。
//3.同一个if语句包含多个可选项，用，分割。
//如果其中任一可选项绑定结果为nil或布尔值为false，则整个if判断就为false。

let str1: Int? = 6
var str2: String? = "abc"
var state: Bool = true

if str1 == .some(6),state == .some(true) {
    print("6 and true")
}

if str1 != nil,str2 != nil {
    print("str1 = \(str1!),str2 = \(str2!)")
}

