//: Playground - noun: a place where people can play

import UIKit

// LEARN THE ESSENTIALS OF SWIFT

// variable declaration
let implicitStr = "I'm implicit!"
let explicitStr: String = "I'm explicit!"

// type casting
let label = "The answer is "
let answer = 42
let fullLabel = label + String(answer)

// interpolated strings
let age = 21
let interpolatedStr = " I am \(age) years old!"
let interpolatedStr2 = " In 3 years I'll be \(age + 3) years old!"

// optional variables
let stringNum = "banana"
let possibleNum = Int(stringNum)
print(possibleNum)

// arrays
var array = [5, 3, 4, 6]
var emptyArray = [String]() // empty initializer
array.append(17)
for num in array {
    print(num)
}

// switch-case
let switchName = "test"
switch switchName {
case "test":
    print("switch test")
default:
    print("switch default")
}

// for loop in range
for i in 0..<4 {
    print("this runs 4 times!")
}

// functions
func sayName(name: String, _ iterations: Int, _ test: String) -> String {
    var greeting = ""
    let piece = "Hello \(name)! "
    for _ in 0..<iterations {
        greeting += piece
    }
    return test + greeting
}

sayName("Chris", 4, "Oh hey there, ") // subsequent parameters need to be identified (unless you add "_")

// classes
class Car {
    var noise = ""
    
    init(_ noise: String) {
        self.noise = noise
    }
    
    func makeNoise() -> String {
        return "\(noise) \(noise) MUTHAFUCKA"
    }
}

var acura = Car("VROOM")
acura.makeNoise()

class Truck:Car {
    var dickLen = 0
    
    init?(_ noise: String, _ dickLen: Int) {
        super.init(noise)
        if dickLen < 0 {
            return nil
        }
        self.dickLen = dickLen
    }
    
    override func makeNoise() -> String {
        return "look at my \(dickLen) inch COCK, \(noise)"
    }
}

var jackedUp = Truck("weeeee", 12)
jackedUp?.makeNoise()
var jackedDown = Truck("weeeee", -1)
jackedDown?.makeNoise()

