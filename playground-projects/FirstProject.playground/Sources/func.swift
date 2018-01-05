import Foundation
class T {
    public init(){}
    
    public func gdc(a: Int, b: Int) -> Int {
        if a % b == 0 {
            return b
        }
        return gdc(a: b, b: a%b)
    }
}

var obj = T()
//print(obj)
//obj.gdc(a: 54, b: 4)

print(obj)
