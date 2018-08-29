//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
import Darwin

class Shapes{
    
    //Definining the properties of a shape
    var color:String //color is an attribute commom to all the shapes
    
    init(color:String) {
        self.color = color // illustrating the use of self
    }
}

//defining the structure
struct Point{
    var x:Int = 0
    var y:Int = 0
    var z:Int = 0
    
    init(x:Int,y:Int,z:Int) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    init(x:Int,y:Int) {
        self.x = x
        self.y = y
    }
}

//defining a structure for a side
struct Line{
    
    var point1:Point
    var point2:Point
    
    init(point1:Point,point2:Point){
        self.point1 = point1
        self.point2 = point2
    }
    
    //getter method - Read only computed property
    var length:Int{
        get{
            return Int(sqrt(pow(Double(point1.x - point2.x),2.0) + pow(Double(point1.y - point2.y),2.0) + pow(Double(point1.z - point2.z),2.0)))
        }
    }
    
    
}

//inheriting from the Shapes class
//class TwoDShapes:Shapes{
//    var side1:Side
//
//    init(side1:Side,color:String)
//    {
//        self.side1 = side1
//        super.init(color: color)
//    }
//
//    func displayDetails()->String{
//        return "This is a 2d shape with color \(color)"
//    }
//}

class Rectangle:Shapes{
    var side1:Int
    var side2:Int
    var origin:Point
    static var count  = 0 // static variable used to track the count of number of objects created
    
    init(side1:Int,side2:Int,origin:Point,color:String)
    {
        self.side1 = side1
        self.side2 = side2
        self.origin = origin
        super.init(color: color)
        Rectangle.count+=1
    }
    
    var center:Point{
        get{
            let xcoordinate = origin.x + side1
            let ycoordinate = origin.y + side2
            return Point(x: xcoordinate, y: ycoordinate)
        }
    }
    
    //access is restricted to this particular class
    func findArea()->Int{
        let area = side1*side2
        return area
    }
    
    func displayDetail() -> String {
        
        return "The length of the rectangle is \(side1), The breadth of the triangle is \(side2), The area of the rectangle is \(findArea()), The origin is \(origin), The center:\(center)"
    }
    
}


class Square:Rectangle{
    
    init(side1:Int,origin:Point,color:String){
        super.init(side1: side1, side2: side1, origin: origin, color: color)
    }
    
    //overiding the find area function
    override func findArea() -> Int {
        return Int(pow(Double(super.side1),2))
    }
    
    //overiding the display detal function
    override func displayDetail() -> String {
        return "The side length is \(super.side1), The area is \(findArea())"
    }
    
}

class Triangle:Shapes{
    var side1:Int
    var side2:Int
    var side3:Int
    var origin:Point
    
    init(side1:Int,side2:Int,side3:Int,color:String,origin:Point){
        self.side1 = side1
        self.side2 = side2
        self.side3 = side3
        self.origin = origin
        super.init(color: color)
    }
    
    func findArea()->Double{
        let s = (side1 + side2 + side3)/2
        let insideSquareRoot = s*(s-side1)*(s-side2)*(s-side3)
        return sqrt(Double(insideSquareRoot))
    }
    
    func displayDetail()->String{
        return "side1 = \(side1) side2 = \(side2) side3 = \(side3) Area = \(findArea())"
    }
    

}

class Circle:Shapes{
    var radius:Int
    
    init(radius:Int,color:String) {
        self.radius = radius
        super.init(color: color)
    }
    
    func findArea() -> Int {
        return Int(Double.pi * Double(radius*radius))
    }
    
    func displayDetail()->String{
        return "Radius = \(radius) Area = \(findArea())"
    }
}

class EquilateralTriangle:Triangle{
    var angle1:Int
    var angle2:Int
    var angle3:Int

    init(side1: Int, side2: Int, side3: Int, color: String, origin: Point,angle1:Int,angle2:Int,angle3:Int) {
        self.angle1 = angle1
        self.angle2 = angle2
        self.angle3 = angle3
        super.init(side1: side1, side2: side2, side3: side3, color: color, origin: origin)
    }
    
}

class CreateShapes{
    static var tri:Triangle?
    
    
    //static functions
    static func checkTriangle(x:Int,y:Int,z:Int) -> Bool{
        if x+y < z || y+z < x || x+z < y{
            return false
        }
        return true
    }
    
    static func createTriangle(x:Int,y:Int,z:Int,color:String,origin:Point)->Triangle{
        if checkTriangle(x:x,y:y,z:z){
            let tri = Triangle(side1: x, side2: y, side3: z, color: color, origin: origin)
            return tri
        }
        return tri!
    }
}


var triangle = CreateShapes.createTriangle(x: 10, y: 23, z: 25, color: "red", origin: Point(x: 0, y: 0))
var list_of_rectangle = [Rectangle]()
for _ in 1...5{
    list_of_rectangle.append(Rectangle(side1: 10, side2: 23, origin: Point(x: 1, y: 2), color: "green"))
}
print(triangle.displayDetail())
print(Rectangle.count) // static variable used to track the count of number of rectangle objects created


	
