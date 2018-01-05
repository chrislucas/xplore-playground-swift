//: Playground - noun: a place where people can play

import UIKit
/*
 Testando Optional Bindind
 */

var myOptional: Int?
myOptional = 10
// var || let
// var esta num escopo do if e nao pode ser alcancado fora dele
if var myOptional = myOptional {
    myOptional += 1
    print("Inside \(myOptional)")
}
else {
    print("Optional is nil")
}
print("Outside \(myOptional!) ")

/*
     Optional Chaining
     Com optional Chaining podemos chamar metodos, membros de classe ou subscripts
 que podem ter seu valor como nil de forma mais segura.
     Podemos ter uma classe que tem um atributo que pode ser nil que chamaria um determinado metodo como por exemplo
     var xValue = Line2D.Point2D?.x?.value
     Se um dos valores com ponto de interrogacao for nil o valor xValue sera nil
 */

var S: String?

if let S = S {
    print(S)
}
else {
    print("String is nil")
}

var sCount = S?.count
S = "Um texto qualquer"
if let temp = S {
    print(temp)
}
else {
    print("Optional Biding is nil")
}

sCount = S?.count
print("Tamanho da string \(sCount!)")
