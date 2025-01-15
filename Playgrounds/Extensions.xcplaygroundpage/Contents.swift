//: [Previous](@previous)

import Foundation

extension Double {
    // let km: Double { return self * 1_000.0 } //'let' declarations cannot be computed properties
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

var value = "11.0".ft // value of type 'String' has no member 'ft' MARK: there is no such member ft exist in value type String

//MARK: Resolve
extension String {
    var ft : String {
        return self + "ft"
    }
}

//Now the above error will resolve as string collection has ft as a property

// Now extending in initializer
//MARK: For Struct
/* struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rectangle {
    var origin = Point()
    var size = Size()
    init(origin: Point = Point(), size: Size = Size()) {
        self.origin = origin
        self.size = size
    }
}

let rectObj = Rectangle()
rectObj.origin.x
rectObj.size.width

let rectObj2 = Rectangle(origin: Point(x: 8.0, y: 8.0), size: Size(width: 12.0, height: 12.0))
rectObj2
rectObj2.origin.x
rectObj2.size.height

// Now I need to modify my initialization of rect based on some operation

extension Rectangle {
    init(center : Point , size : Size) {
        var newX = center.x/2
        var newY = center.y/2
        self.init(origin : Point(x: newX, y: newY) , size : Size())
    }
}

let reactObj3 = Rectangle(center: Point(x: 8, y: 8), size: Size(width: 14, height: 14))
*/

class Size {
    var width = 0.0, height = 0.0
}
class Point {
    var x = 0.0, y = 0.0
}
class Rectangle {
    var origin = Point()
    var size = Size()
    init(origin: Point = Point(), size: Size = Size()) {
        self.origin = origin
        self.size = size
    }
}

let rectObj = Rectangle()
rectObj.origin.x
rectObj.size.width

var point1 = Point()
point1.x = 12
point1.y = 12

var size1 = Size();
size1.height = 8
size1.width = 8

let rectObj2 = Rectangle(origin: point1, size: size1)
rectObj2
rectObj2.origin.x
rectObj2.size.height

// Now I need to modify my initialization of rect based on some operation
extension Rectangle {
    convenience init(center : Point , size : Size) {
        print(size.height)
        var newX = center.x/2
        var newY = center.y/2
        
        
        var newPoint = Point();
        newPoint.x = newX
        newPoint.y = newY
        
        var newSize = Size()
        newSize.height = size.height
        newSize.width = size.width
        
        self.init(origin : newPoint , size : newSize)
    }
}

let reactObj3 = Rectangle(center: point1, size: size1)
reactObj3.origin.x
reactObj3.origin.y
reactObj3.size.width
reactObj3.size.height

// Inheritance in extension
class Person {
    var name : String
    var age : Int
    var bg : String
    
    init(name: String, age: Int, bg: String) {
        self.name = name
        self.age = age
        self.bg = bg
    }
}

class Student : Person {
    var section : String
    var dept : String
    
    init(section: String, dept: String, name: String, age: Int, bg: String) {
        self.section = section
        self.dept = dept
        super.init(name: name, age: age, bg: bg)
    }
    
    func getDetails(){
        print("\(name) : \(dept)")
    }
}

var std = Student(section: "1", dept: "CSE", name: "Ajay", age: 21, bg: "A+")
std.getDetails()

extension Student{
    func updateDetails(){
        
        
    }
}

// This will work
extension Int {
    
   func square() -> Int {
        return self * self
    }
    
    var squareValue : Int {
        return self * self
    }
    // Cannot assign to value: 'self' is immutable - as self itself is immutable
    /* func square2() {
        self = self * self
    }*/
    
    
    //MARK: Nested Extensions are not allowed
    /*extension String {
        
    }*/
    
}


3.squareValue
var p = 3
p.squareValue


class X{
    func abc(){
        
    }
    
}
class Y : X{
    override func abc(){
        
    }
}

class Z  : Y{
    override func abc() {
        
    }
    // MARK: Nested extension are not allowed inside a class
    // MARK: Declaration is only valid at file scope
    /* extension x{
        
    }*/
    
    
}

extension Optional {
    struct Student {
        var name : String
        
        enum BloodGroup {
            case AB
            case A
            case B
            case O
            
            //case typeBg : TypeOfBg
            
            enum TypeOfBg {
                case positive
                case negative
            }
            
            
            
        }
    }
}

// extension to convert temperature
//Celcius to fahrenheit and vice versa
protocol Good {
    
}
extension Double : Good {
    
    //Celcius --> fahrenheit
    var ftemp : Double {
        return (self * 1.8) + 32
    }
    
    //Celcius <-- fahrenheit
    
    var ctemp : Double {
        return (self - 32) * 0.555
    }
}

var celciustemp = 32.0
celciustemp.ftemp




