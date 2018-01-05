//: Playground - noun: a place where people can play

import UIKit

/*
 https://www.weheartswift.com/arrays/
 
 */

/*
for i in stride(from: 10, to: 5, by: -1) {
    print(i)
}
*/
var sample : [Int]
var emptyArray: [Int] = []
//print(emptyArray)
var T: [Int] = [1,2,3,4]
T[0...2] = [5,5]    // subsitui os elementos de 0 a 2 inclusive, se o array de
// substituicao nao tiver o mesmo tamanho determinado pelo range lo ... hi
// os elementos restantes sao eliminados do array original
print(T)
var closure: (Int, Int) -> (Int) = {
    var aa = $0, bb = $1
    while aa % bb != 0 {
        let mod = aa%bb
        aa = bb
        bb = mod
    }
    return bb
}
print(closure(54, 4))
