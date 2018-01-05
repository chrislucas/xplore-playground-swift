//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str.hasPrefix("Hello"))
print(str.hasPrefix("hello"))
print(str.hasPrefix("H"))
print(str.hasSuffix("gr"))
print(str.hasSuffix("tound"))

let g = "\u{2126}"

print("testando a funcao replacingOccurrences"
    .replacingOccurrences(of: "funcao", with: "função"))

// substrings
// quando recuperamos uma substring de uma string obtemos uma instancia de substring
// nao string. O tipo substring tem quase todos os metodos da classe string

print("Tipo: \(type(of: path.startIndex))")

var path        = "/usr/locals/bin/etc"
let startIndex  = path.index(path.startIndex, offsetBy: 4)
var endIndex    = path.index(path.startIndex, offsetBy: 15)
let subPath     = path[startIndex ..< endIndex]

//print("Start: \(startIndex), End \(endIndex)")
print("Tipo: \(type(of: subPath))")
let newString = String(subPath)
print("Tipo: \(type(of: newString))")

//var i = path.index(after: path.startIndex)
//var j = path.index(before: path.endIndex)
//path[i...j]

print("Substring: \(subPath)")
