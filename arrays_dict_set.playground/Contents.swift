////: Playground - noun: a place where people can play
//
//import UIKit
//import PlaygroundSupport
//
//var responseMessages = [200: "OK",
//                        403: "Access forbidden",
//                        404: "File not found",
//                        500: "Internal server error"]
//
//var emptyDict: [String: String] = [:]
//let httpResponseCodes = [200, 403, 301]
//var interestingNumbers = ["primes": [2, 3, 5, 7, 11, 13, 17],
//                          "triangular": [1, 3, 6, 10, 15, 21, 28],
//                          "hexagonal": [1, 6, 15, 28, 45, 66, 91]]
//
//let imagePaths = ["star": "/glyphs/star.png",
//                  "portrait": "/images/content/portrait.jpg",
//                  "spacer": "/images/shared/spacer.gif"]
//
//let celcius = [34,45.0,56.0,34.0]
////let fahrenheit = celcius.map{ $0 * (9/5) + 32 }
////
////print(fahrenheit)
////let celcius = [-5.0, 10.0, 21.0, 33.0, 50.0]
//
//
////MAP------------------------------------------------------------------------------------------------------------------------------------------
//let fahrenheit = celcius.map { $0 * (9/5) + 32 }
////print(fahrenheit)
//
//
////FILTER-------------------------------------------------------------------------------------------------------------------
//let somevar = celcius.filter({$0 < 50})
////print(somevar)
//
//
////GROUPING---------------------------------------------------------------------------------------------------------------------------
//var somearray = ["vik","vin","danny","anu","ana","sud","nasha","sob","nova","john"]
//var group = Dictionary(grouping: somearray){$0.first!}
//print(group)
//
//
////REDUCE-----------------------------------------------------------------------------------------------------------------
//var sum = celcius.reduce(0,+)
//print(sum)
//
//
////for (key,value) in responseMessages{
////    print(key," ",value)
//////}
////for (key,value) in responseMessages.enumerated(){
////    print(key," ",value)
////}
//
//
////ZIP DICTIONARY-------------------------------------------------------------------------------------------
//var onemoredict = Dictionary(uniqueKeysWithValues: zip(celcius, httpResponseCodes))
////print(onemoredict)
//
////var whatever = imagePaths.keys
////var innon_whatever = imagePaths.values
////print(whatever)
////print(innon_whatever)
////
//var whatever_keys = responseMessages.keys
//var whatever_values = responseMessages.values
//
////print(whatever_keys)
////print(whatever_values)
//
//
//// Date and date component
////var d = Date()
////print(d)
//
//
////DATE-----------------------------------------------------------------------------------------------------------------
//let dateFormatter = DateFormatter()
//dateFormatter.dateStyle = .medium
//dateFormatter.timeStyle = .medium
//let date = Date()
//dateFormatter.locale = Locale(identifier: "en_US")
//print(dateFormatter.string(from: date))



//21/08/2018-------------------------------------------------------------------------------------------------------
//a structure is defined

struct Resolution {
    var width = 0
    var height = 0
}


// a class is defined
class VideoMode {
    var resolution = Resolution(width: 1920, height: 1080)
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print(someVideoMode.resolution)

// structures and enum are all value types in swift
var r = Resolution(width: 3, height: 5)
var a = r
r.height = 17
print(r)

// getter and setter in structures

struct Point{
    var x:Int = 0
    var y:Int = 0
}

struct Size{
    var width:Int = 0
    var height:Int = 0
}

struct Rect{
    var size = Size()
    var origin = Point()
    
    var center:Point{
        get{
            let tempx = origin.x + size.width
            let tempy = origin.y + size.height
            return Point(x: tempx, y: tempy)
        }
        
        set(newValue){
            origin.x = newValue.x - size.width
            origin.y = newValue.y - size.height
        }
    }
}

var square = Rect(size: Size(width: 10, height: 10),origin: Point(x: 0, y: 0))
print(square.center)
square.center = Point(x: 15, y: 15)
square.center.x = 5
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
