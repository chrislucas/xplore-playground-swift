//: Playground - noun: a place where people can play

import UIKit


var X : Float   = 0.111_111_111 + 0.222_222_222
var Y : Double  = 0.111_111_111 + 0.222_222_222
//print(X)
//print(Y)
//print(Y + 3)
// print(X + Y) nao eh possivel fazer operacao de soma entre Float e Double
// print(X * Y) nao eh possivel fazer operacao de multiplicacao entre Float e Double

/*
print("Y + Y \(Y+Y)")
print("X + X \(2*X)")
print("X + Y \(Double(X)+Y)")
*/

//print("Float.pi \(Float.pi)")
//print("Double.pi \(Double.pi)")
//print("Float32.pi \(Float32.pi)")
//print("Float64.pi \(Float64.pi) ")


// Base numerica
/*
var bin = 0b1011
print(bin)
var octa = 0o70
print(octa)
var hexa = 0xffffff
print(hexa)
*/


var multilineString = """
Esse eh um texto com multiplas linhas
estou realizando um estudo sobre o basico
dessa linhagem sensacional, SWIFTY \\o
"""
//print(multilineString)
/*
for char in multilineString.characters {
    print(char)
}
 */
/*
multilineString.map {
    print($0)
}
*/

var name = "christoffer"
var message = "ola " + name // concatenado usando operador +
print("Ola \(name)")    // concatenacao dita in-line

// se uma string for declarada com a keyword let nao conseguiremos concatenar nada a ela
// pois eh let define uma constante


