//: Playground - noun: a place where people can play

import UIKit


/**
 https://developer.apple.com/documentation/swift/string/1786175-index
 
 */

var str = "Hello, playground"

var start   = str.startIndex
var end     = str.endIndex
let idx     = str.index(start, offsetBy: 10, limitedBy: end)

// o valor retornado pelo metodo index da string e um optional
// para usa-lo como no codigo abaixo eu devo "desempacota-lo" (unwrapping)
// para fazer isso usamos o caracter de exclamação "!"
if idx != nil {
    print(str[idx!])
}

/**
 ? e !
 Optional Chaning
https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html
 
 */

/*
 Criando uma classe que possui uma propriedade cujo valor esta empacotado em um tipo Optional
 para desempacota-lo temos que usar o caracter !
 */
class Person {
    var residence: Residence?   // wrapping in a optional
}

class Residence {
    var number = 1
}

var chris = Person()
// chris.residence = Residence()
// se eu tentar acessar o valor residence direto (chris.residence!.number) vai dar erro pois
// a propriedade residence == nil

/*
 Optional Chaning nos da uma forma segura de testar se uma instancia possui uma propriedade
 */
if chris.residence?.number != nil{
    let number = chris.residence!.number
    print("Número de quartos: \(number)")
}
else {
    print("Não possui residência")
}

