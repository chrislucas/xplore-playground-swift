	//: Playground - noun: a place where people can play

import UIKit

var array2D: [[Int]] = [[]]
print(array2D)
var fmt = String(format: "%.10f", 22/7*1.0)
print(fmt)
    
print(array2D.capacity)
    
    // ler sobre arrays e NSArray em swift https://developer.apple.com/documentation/swift/array
/**
 * Formas de iniciar um array
 */
var A = Array<Int>()
var B = [Int]()
var C = [Int](repeating: 2, count: 5)
    B.append(10)
    print(B)
/**
     * Dicionario
     */

    var alpha1 = Dictionary<String, Int>()
    //var alpha2 = [String:Int]()
    var alpha3:[String:Int] = [String:Int]()
    alpha1.updateValue(65, forKey: "a")
    alpha1.updateValue(66, forKey: "b")
    alpha1.removeValue(forKey: "a");
    
    alpha3.updateValue(67, forKey: "c")
    print(alpha1)
    
    
