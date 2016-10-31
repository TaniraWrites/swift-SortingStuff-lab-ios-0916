//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Ron Don Volante on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    // TODO: Implement all of the sort functions (lets organize this toy bin!)
    mutating func sortShips() {
        ships.sort { (shipOne, shipTwo) -> Bool in
            
            if shipOne.name  == "Titanic" {
                return true
            } else if shipTwo.name == "Titanic"{
                return false
            }
                return shipOne.age < shipTwo.age
            }
        }
    
    
    mutating func sortBooks() {
        books.sort { $0.name > $1.name}
        
    }
    
    mutating func sortBowlingPins(){
        bowlingPins.sort {$0.color.rawValue < $1.color.rawValue}
        
    }
    
    mutating func sortMusicCDs() {
        musicCDs.sort {
            if $0.name == "Drake"{
                return true
            }else if  $1.name == "Drake" {
                return false
            }
            return $0.name < $1.name
        }
        
    }
    
    mutating func changeColorOfAllPins(to color : Color) {
        
        bowlingPins = bowlingPins.map { pin in
            
            var newPin = pin
            newPin.changeColor(to: color)
            return newPin
        }
        
        
        
        bowlingPins = bowlingPins.map(doSomething)
        
        
        
        var newPins: [BowlingPin] = []
        
        for pin in bowlingPins {
            
           let newPin = doSomething(with: pin)
            newPins.append(newPin)
        }
        
        bowlingPins = newPins
        
    }
    
    
    func doSomething(with pin: BowlingPin) -> BowlingPin {
        
        var newPin = pin
        newPin.changeColor(to: .blue)
        return newPin
        
    }
    
}



struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
}


extension BowlingPin {
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, organe, yellow, green, blue, indigo, violet
}

struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}


