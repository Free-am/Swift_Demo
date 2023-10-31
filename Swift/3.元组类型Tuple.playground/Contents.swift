import UIKit


/*
 定义
1.元组把多个值合并成单一的复合类型的值
2.元组内的值可以是任意类型，而且可以是不同类型

let var  可变/不可变
1.不能改变总数  不能改变类型（any类型除外）
2.只取其中部分变量，其余可用_代替
3.可作为函数返回值（可以在函数的返回部分命名）
 
 元素命名
 1.元组中的每一个元素可以指定对应的元素名称
 
 Tuple修改
 1.用var定义的元组就是可变元组，let定义的就是不可变元组
 2.不管可变还是不可变元组，元组在创建后就不能增加和删除元素
 3.可以对可变元组的元素进行修改，但是不能改变其类型
 4.any类型可以改为任何类型
 
 
 Tuple分解
 1.以将一个元组的内容分解成单独的常量和变量
 2.如果只需要使用其中的一部分数据，不需要的数据可以用下划线(_)代替
 
*/

let error = (1, "没有权限")
let (i, j) = error
let (k, _) = error
print("i = \(i), j = \(j), k = \(k)")

var errorInfo = (code: 2 ,msg: "error")

let a = errorInfo.code
let aa = errorInfo.0
let b = errorInfo.msg
let bb = errorInfo.1

errorInfo.code = 6
errorInfo.msg = "right"

var successInfo:(code: Any, String) = (code: 9,msg: "success")
successInfo.code = "9"

let (errorCode,errorMessage) = error

func writeFile(content: String) -> (errorCode: Int,errorMessage: String) {
    return error
}

let c = writeFile(content: "")
print("c = \(c)")

func hehe() -> (Int,String) {
    return errorInfo
}

let d = hehe()
print("d = \(d)")
