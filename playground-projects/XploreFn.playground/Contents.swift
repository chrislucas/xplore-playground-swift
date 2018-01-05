//: Playground - noun: a place where people can play

import UIKit

func swapNumbers(_ m:Int, _ n:Int) -> (Int, Int) {
    return (n, m)
}

var swap: (Int,  Int) -> (Int, Int) = swapNumbers
let anotherSwap = swap


print(anotherSwap(3,4))
