//: Playground - noun: a place where people can play

import UIKit

/*
 https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html
 
 Estrutura de classes em swift
 https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html#//apple_ref/doc/uid/TP40014097-CH13-ID82
 
 
 */

class Person {
    var residence: Residence?
}


class Residence {
    var rooms = [Room]()    // inicializando um array vazio do tipo Room
    var numberOfRooms: Int {
        return rooms.count
    }
    
    /*
     subscripts
     https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Subscripts.html
     Classes, estruturas(structs) e enumerations podem definir subscripts. Esse recurso permite criar uma forma de acessar um elemento de uma collection, list ou sequence.
     Através do subscript podemos recuperar um elemento de uma colecao através do indice ou definir um elemento na colecao. Assim nao precisamos criar metodos get e set para definir um valor num array que seja atributo de uma classe
     Ponto interessante, podemos definir multiplos subscripts para a mesma propriedade, e o subscript apropriedado sera chamado baseado no tipo de index, ou seja podemos fazer overload de subsscripts. Eles nao sao limitados a uma dimensão
     
     */
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("Número de quartos \(numberOfRooms)")
    }
    
    var address: Address?
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let bName = buildingName, let bNumber = buildingNumber {
            return "\(bName), \(bNumber)"
        }
        return nil
    }
}

let chris = Person()
if let roomCount = chris.residence?.numberOfRooms {
    print("I have a fucking \(roomCount) in my fuycking residence")
} else {
    print("I haven't a fuc*** box")
}





