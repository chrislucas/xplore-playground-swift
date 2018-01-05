//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// let keyword para definir constantes
let const15 = 0x0f, const255 = 0xff

print(UInt8.min)
print(UInt8.max)

print(UInt16.min)
print(UInt16.max)

print(UInt32.min)
print(UInt32.max)

print(UInt64.max)

print(Int32.min)
print(Int32.max)

print(Int64.min)
print(Int64.max)

// Cannot convert string to float
var X : Float = 3.45  // "erro bizarro"
// quando definir uma variavel e nao quisermos atribuit nenhum valor inicial
// devemos definir o seu tipo, senao o compilador nao sabera inferir qual o tipo correto
var Y : Int

print("\(X)")

//print(const15 & const255)
