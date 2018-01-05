//: Playground - noun: a place where people can play

import UIKit

/*
 Subscripts options
 Subscripts podem receber N parametros,
 tais parametros podem ser de qualquer tipo
 Subscripts podem retornar valores de qualquer tipo.
 Subscripts nao podem utilizar parametros in-out ou default parameters
 https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Subscripts.html
 
 **/

// testando subscript overload
struct Matrix {
    let rows: Int, cols: Int
    var grid: [Double]
    init(rows: Int, cols: Int) {
        self.rows = rows
        self.cols = cols
        grid = Array(repeating: 0.0, count: rows*cols)
    }
    
    func isValidIndex(row: Int, col: Int) -> Bool {
        return row<rows && col<cols && row>=0 && col>=0
    }
    
    subscript(row: Int, col: Int) -> Double {
        get {
            assert(isValidIndex(row: row, col: col), "Indice (\(row),\(col)) invalido")
            return grid[(row*cols)+col]
        }
        
        set {
            assert(isValidIndex(row: row, col: col), "Indice (\(row),\(col)) invalido")
            grid[row*cols+col] = newValue
        }
    }
}

var matrix = Matrix(rows:5,cols:5)
//print(matrix.grid)
//matrix[0,1] = 1.45
//print(matrix.grid)
//matrix[5,5] = 10.1
//matrix[4,4] = 10.1
//print(matrix.grid)
print(0xff)
