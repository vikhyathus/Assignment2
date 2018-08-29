//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

//Extensions -- ability to extend types for which you do not have access to the original source code.
//Different uses of extensions
//1. PRESERVING INITIALISERS
struct Person{
    var firstName:String?
    var lastname:String?
    
//    init(dict:[String:String]){
//        self.firstName = dict["first"]
//        self.lastname = dict["last"]
//    }
}
extension Person{
    
    init(dict:[String:String]){
        self.firstName = dict["first"]
        self.lastname = dict["last"]
    }
}

var p = Person(firstName: "vik", lastname: "shetty") //- this would have been an error without extension
var dict:[String:String] = [:]
dict["first"] = "Vik"
dict["last"] = "shetty"
var q = Person(dict:dict)


//2.CODE SEPERATION can be achieved
//Type definition only defines the stored prperties.The extension defines the behaviour of the methods, and computed properties hence achieving code seperation

struct Man {

    let first: String
    let last: String
    
}

extension Man {

    init(dictionary: [String: String]) {
        self.first = dictionary["first"] ?? "John"
        self.last = dictionary["last"] ?? "Doe"
    }
    
    var asDictionary: [String: String] {
        return [ "first": first,
                 "last": last ]
    }
}

//Extensuin for computed properties

extension Int{
    
    var square:Int { return self*self }
    var cube:Int { return self*self*self }
    var squareRoot:Double { return sqrt(Double(self)) }
    
    func addNumber(a:Int)->Int{
        return self + a
    }
}

var a:Int = 5
var b = a.square
print(b)
print(a.squareRoot)
print(a.addNumber(a: 10))

//Methods
//extension Int {
//    func repetitions(task: () -> Void) {
//        for _ in 0..<self {
//            task()
//        }
//    }
//}
//func whatever(){
//    print("whatever")
//}
//2.repetitions(task:whatever())


//Nested Types -

extension Int{
    
    enum Kind {
        case positive, negative, zero
    }
    
    var kind:Kind{
        switch self {
        case 0:
            return .zero
        case self where self > 0:
            return .positive
        default:
            return .negative
        }
    }
}

print((-15).kind)


