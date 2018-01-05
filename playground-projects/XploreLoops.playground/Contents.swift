//: Playground - noun: a place where people can play

import UIKit

/*
 Loops
 https://www.weheartswift.com/loops/
*/
func gdc(_ a: Int, _ b: Int) -> Int {
    var aa = a, bb = b
    while aa%bb != 0 {
        let mod = aa % bb
        aa = bb
        bb = mod
    }
    return bb
}
//print(gdc(154, 118))

/*
https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID501
 
 
 Uso do underscore para nao ter que ficar escrevendo o nome dos parametros nos metodos
 https://stackoverflow.com/questions/24437388/whats-the-underscore-representative-of-in-swift-references
 
*/

func anotherFunctionLoop(_ n: Int) -> Int {
    var f = 2;
    var arr = Array(repeating: 0, count: n+1)
    arr[0] = 0
    arr[1] = 1
    // nessa forma de loop a condicao e verifica apos
    // a execucao. Assim esse loop ej executado pelo menos uma vez
    repeat {
        arr[f] = arr[f-1] + arr[f-2]
        f+=1
    } while(f <= n)
    return arr[n]
}
//print(anotherFunctionLoop(2))

func anotherFunctionLoop2()  {
    /*
         range operator
         lo ... hi ou lo ..< hi
     */
    for i in 1...10 {
        print(i)
    }
    for _ in 1 ... 5 {
        print("Loop maroto que nao usa uma variavel incrementadora")
    }
}
anotherFunctionLoop2()
