//: Playground - noun: a place where people can play

import UIKit



let base = 3;
let power = 10;
var answer = 1;

for _ in 1...power {
    answer *= base
    print(answer)
}



var str = ""
if str.isEmpty{
    print("String is empty")
} else {
    print("Not empty")
}


protocol Humanable {
    func eat()
    func drink(howMuchWater: Int) -> Bool
}

class Human : Humanable {
    func eat() {
        print("The Human is eating right now")
    }
    
    func drink(howMuchWater: Int) -> Bool {
        print("The human drink \(howMuchWater) cups of water")
        return true
    }
}

var human = Human()
human.eat()
human.drink(howMuchWater: 20)




//protocol Toggleable {
//    mutating func toggle()
//}
//
//enum OnOffSwitch: Toggleable {
//    case Off, On
//    mutating func toggle() {
//        switch self {
//        case .On:
//            self = Off
//        case .Off:
//            self = On
//        default:
//            print("default")
//        }
//    }
//}
//
//
//var wallSwitch = OnOffSwitch.Off

protocol Walkable {
    var name: String {get set}
    func walk(steps: Int)
}
class Humans: Walkable {
    var name = "Roopa"
    func walk(steps: Int) {
        print("The \(self.name) is walking \(steps) steps")
    }
}

class Dog:Walkable{
    var name = "Dog"
    func walk(steps: Int) {
        print("Walking the \(self.name) \(steps) steps")
    }
    func bark()  {
        print("Barking ")
    }
}

class PlayTime {
    func takeWalk(wakable: Walkable)  {
        print("Taking the \(wakable.name) for a walk")
        wakable.walk(steps: 10)
        if  wakable is Dog {
            //Dog.bark()
        } else {
            print("\(wakable.name)")
        }
    }
}


var playTime = PlayTime()
var dog = Dog()
playTime.takeWalk(wakable: dog)

var h = Humans()
playTime.takeWalk(wakable: h)




protocol Execrisable: Walkable {
    func run(miles: Double)
}


class TrackStart: Execrisable {
    var name = "Roopa"
    func walk(steps: Int) {
        print("Walkable walk funtion")
    }
    
    func run(miles: Double) {
        print("Excrisable run funtion")
    }
}




class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing -  vehicle doesn't make a noise
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")


class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")


class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()




extension Double {
    var km: Double { return self * 1_000.0 }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}


let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")


let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")




func average(numbers:Int...) -> Int {
    var total = 0
    for n in numbers {
        total += n
    }
    return total/numbers.count
}

//var avg = average(numbers: 13,14,23)
//print(avg)



func joinStrings(strings: String[]) -> String {
    var returnStr = ""
    for str in strings {
        returnStr += str
    }
    returnStr
}

func joinString(strs:String...) -> String{
    return joinStrings(strings: strs)
}








