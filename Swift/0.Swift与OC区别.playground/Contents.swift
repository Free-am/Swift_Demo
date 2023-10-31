import UIKit

/*
一、Swift 和 OC 区别

1.编程范式：
Swift：面向协议编程、函数式编程（闭包）、面向对象编程
Objective-C：面向对象编程, +RAC

2.类型安全：
Swift：类型校验，不匹配抛出错误
OC：编译不报错

3.值类型增强

Swift：结构体struct、枚举enum、元祖tuple 都是值类型。
严格被一个所有者控制，持有副本，不会连带修改。

OC：指针类型。

4.枚举类型增强

5.泛型

6.协议和扩展
Swift：面向协议编程，可以用在值类型
OC：optional缺乏约束，response

7.函数和闭包
Swift：函数是一等公民，可作为变量、参数、返回值   函数式编程
OC：selector 和 block 封装才能  类似函数式编程


二、Swift命令行编译运行：
swift -> swift AST -> swiftc -> swift IL -> llvm IR（c++）->.o/arm

编译运行脚本命令：
可执行文件：swiftc -o main.out main.swift
抽象语法树：swiftc main.swift -dump-ast
Swift中间语言：swiftc main.swift -emit-sil
LLVM中间表示层语言：swiftc main.swift -emit-ir
汇编语言：swiftc main.swift -emit-assembly


三、运行Swift 工具(Xcode6.1引入)：交互式 REPL
定义变量，定义函数，进行变量运算.
终端命令: 进入 swift   退出  :quit


四、Xcode->Playground (WWDC2016）、iPad App Playground
Sources:源代码   Resources:资源文件
LiveView

 
 */
