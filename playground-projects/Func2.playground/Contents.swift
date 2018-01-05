//: Playground - noun: a place where people can play

import Foundation

func gdc(_ a:Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    }
    return gdc(b, a%b)
}

public class T {
    public init() {}
    func fx() {
        print(0xff)
    }
}

//print(gdc(54,4))
var t = T()
print(t.fx())
