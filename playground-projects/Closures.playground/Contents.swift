//: Playground - noun: a place where people can play

import UIKit
//https://www.weheartswift.com/closures/
/*
     Funcoes que podem ser passadas como argumentos para outras funcoes.
 
     Closures aceitam in-out variables como argumento porem nao aceitam
     default arguments
 */

var C : () -> () = {
    print(10)
}
C()

var numbers = [1, 4, 2, 5, 10, -1, -12, 8, 3]
var decrescent: (Int, Int) -> (Bool) = {
    x, y in return x < y
}
numbers.sort(by: decrescent)
print(numbers)

// Variadic Parameters
/*
 Multiplos argumentos para uma determinada funcao
 */

func summation(_ numbers: Int ...) -> Int {
    var total: Int = 0
    for i in numbers {
        total += i
    }
    return total
}
print(summation(1,2,3,4,5,6,7,8,9,10))


/*
     In-Out Parameters
 https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID158
 
     Os argumentos de uma funcao em swift sao constantes (let, ou seja nao da pra fazer soma e atribuir a um argumento inteiro por exemplo), tentar mudar o valor de um argumento dentro do corpo do metodo resulta num compile-tine error
 
 */

var T = 10
func modifyArgs(_ arg: inout Int) {
    T += 1
}
modifyArgs(&T)
print("Valor da variavel T= \(T)")
class Data {
    var x : Int
    init(_ x: Int) {
        self.x = x
    }
}

var data = Data(10)
func modifyArgs(_ args: inout Data) {
    args.x=args.x^2
}
modifyArgs(&data)
print(data.x)
// In-out params e closure
var swap : (inout Int, inout Int) -> () = {
    x, y in
    let z = x
    x = y
    y = z
}
var a=10, b=11
swap(&a, &b)
print("ab \(a) \(b)")


