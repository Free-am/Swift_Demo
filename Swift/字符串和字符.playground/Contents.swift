import Foundation
// 字符串和字符
// 存储和操作文本。
//
//let a = "hello world"
//let b = a.utf8CString
//print(b)
//
//let singleLineString = "These are the same."
//let multilineString = """
//
//    These are the same. \u{1f496}
//
//    Hehehe
//
//"""
//print(multilineString)
//
//let threeDoubleQuotationMarks = """
//Escaping the first quotation mark \"""
//Escaping all three quotation marks \"\"\"
//"""
//print(threeDoubleQuotationMarks)

//let threeMoreDoubleQuotationMarks = #"""
//Here are three more double quotes: """
//"""#
//print(threeMoreDoubleQuotationMarks)

//var emptyString = ""
//var anyString = String()
//if anyString.isEmpty && emptyString.isEmpty {
//    print("String is empty.")
//}

var str = "hello"
str += " world!"
print(str)

var arr: [Character] = []
for char in str {
    print(char)
    arr.append(char)
}
print(arr)
let str2 = String(arr)
print(str2)
let str3 = String("InitString")
print(str3.data(using: .utf8) ?? "")
print(String(format: "%@ is %@", str2, str3))
print(str2 + str3,"\n",str2.appending(str3))
str.remove(at: str.index(str.startIndex, offsetBy: 1))
print(str)
print(#"6 times 7 is \#(6 * 7)."#)

let combinedEAcute: Character = "\u{65}\u{20DD}\u{301}"
print(combinedEAcute)
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
print(regionalIndicatorForUS)

let unusualMenagerie = "Koala 🐨，Snail 🐌，Penguin 🐬，Panda 🐼"
print("unusualMenagerie has \(unusualMenagerie.count) characters")
unusualMenagerie[unusualMenagerie.startIndex]
unusualMenagerie[unusualMenagerie.index(before: unusualMenagerie.endIndex)]
unusualMenagerie[unusualMenagerie.index(after: unusualMenagerie.startIndex)]
unusualMenagerie[unusualMenagerie.index(unusualMenagerie.startIndex, offsetBy: 6)]

for index in "unusual Menagerie".indices {
    print("\("unusual Menagerie"[index])", terminator: " ")
}
print("\r1234.5")
print("hello \rworld!")

// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"

// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"

if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// Prints "These two strings are considered equal"


let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters aren't equivalent.")
}
// Prints "These two characters aren't equivalent."

let str5 = "sdf"
let str6 = "asd"
if str5.hasPrefix("a") {
    print(1)
} else if str6.hasSuffix("d") {
    print(2)
} else {
    print(3)
}

let dog = "Dog!!🐶"
for scalar in dog {
    print(scalar, terminator: " ")
}
