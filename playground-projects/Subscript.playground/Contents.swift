//: Playground - noun: a place where people can play

import UIKit

/*
 https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Subscripts.html
Classes, estruturas(struct) e enumerations podem definir subscripts. Eles sao atalhos para acessar elementos de uma colecao, lista ou sequencia. Atraves da sintaxe d  array podemos acessar e definir valores de uma colecao de dados sem a necessidade de criar metodos de acesso.
 Podemos definir multiplos subscripts para um unico tipo e apropriadamente o sistema ira chamar o subscript
 mais adequado, conforme sua assinatura, assim como ocorre em sobrecarga de metodos
 
*/


// subscription somente de leitura
struct MultiplierTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

/*
class T {
    var o: Int?
}
var t = T()
t.o = 10
if t.o != nil {
    let i = t.o!
    print(i)
}
else {
    print("nil")
}
*/
func testMultiplier() {
    let multiplier = MultiplierTable(multiplier: 3)
    for var i in 0 ... 100 {
        print(multiplier[i])
    }
}


func testDictionary() {
    var dict = ["d"  : 0x13, "b" : 0x11]
    print(type(of: dict))
    dict["c"] = 0x12
    dict["a"] = 0x10
    for (k, v) in dict {
        print("k, v (\(k), \(v))")
    }
}

