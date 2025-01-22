import Foundation

protocol Vehicle {
    var name : String { get }
    var color : String { get }
    var numberOFWheels : Int { set get }
    var amount : Int { get set }
    
    mutating func openCar()
    
}

class Car : Vehicle {
    var name : String
    var color : String
    var numberOFWheels : Int
    var amount : Int
    var ownerName :  String
    
    func openCar(){
        print("Abc")
    }
    
    
    init(name: String = "Car", color: String, numberOFWheels: Int, amount: Int, ownerName: String) {
        self.name = name
        self.color = color
        self.numberOFWheels = numberOFWheels
        self.amount = amount
        self.ownerName = ownerName
    }
}

struct BMW : Vehicle {
    var name : String
    var color : String
    var numberOFWheels : Int
    var amount : Int
    var ownerName :  String
    
    mutating func openCar(){
        print("Abc")
        self.name = "BMW2"
    }
}

var obj = BMW(name: "BMW", color: "Balck", numberOFWheels: 4, amount: 2000000, ownerName: "AJ")
obj.openCar()

extension String : Vehicle {
    var name : String {  return "" }
    var color : String { return "" }
    var numberOFWheels : Int {
        get {
            return 2
        }
        set{
            newValue
        }
    }
    var amount : Int {
        get {
            return 2
        }
        set{
            newValue
        }
    }
    func openCar(){
        print("Abc")
    }
    
}

// Initializer requirements
protocol Shape{
    init(side :Int)
}

class AnotherClass : Shape {
    
    var data: Int
    var data2: Int
    
    required init(side : Int){
        self.data = side
        self.data2 = 0
    }
    
    init(d : Int){
        self.data2 = d
        self.data = 0
    }
    
}

class baseClass : AnotherClass {
    var myData : Int
    var mySides : Int
    
    required init(side: Int) {
        self.myData = 0
        self.mySides = 0
        super.init(side: side) //
    }
}

struct AnotherStruct : Shape{
    var data : Int
    var data2 : Int
    
    init(side: Int) {
        self.data = side
        self.data2 = 0
    }
    
}

var obj2 = AnotherClass(d: 23)

obj2.data
obj2.data2

var obj3 = baseClass(side: 7)

// using protocols as type

protocol UserDetails{
    var name :  String {get set}
    var age : Int {get}
    var address : String {get set}
    
    func getUserDetails()
    
    init(name : String, age : Int , address : String)
}

class Abc : UserDetails{
    var name: String
    
    var age: Int
    
    var address: String
    
    func getUserDetails() {
        print("Name: \(name) , Age: \(age)")
    }
    
    required init(name: String, age: Int, address: String) {
        self.name = name
        self.age = age
        self.address = address
    }
    
    
}

class Demo {
    
}

// MARK: Decalring variables of protocol types:
var student : UserDetails = Abc(name: "ff", age: 21, address: "Indore") //hold any object that conforms to the UserDetails protocol, not just instances of a specific class.
//var student1 : UserDetails = Demo() // value of type 'Demo' does not conform to specified type 'UserDetails'

var std2 =  Demo()
// MARK: Protocol as function argument
func showUsers(obj : UserDetails){
    var obj = obj;
    obj.address = "Modified Address"
}

showUsers(obj: student) // Here obj must that argument which follows an userdetail protocol
student.address;

//showUsers(obj: std2) // Argument type 'Demo' does not conform to expected type 'UserDetails'

// Return Protocol from function

struct NewStudent : UserDetails{
    var name: String
    
    var age: Int
    
    var address: String
    
    func getUserDetails() {
        print("Name: \(self.name) , Age: \(self.age)")
    }
    
}

var nstdStruct = NewStudent(name: "Aman", age: 21, address: "Bhopal")

func helloStudent() -> UserDetails {
    nstdStruct.name = "Aman Jaiswal"
    return nstdStruct
}

func helloStd2() -> UserDetails {
    class NewStd : UserDetails{
        var name: String
        
        var age: Int
        
        var address: String
        
        func getUserDetails() {
            
        }
        
        required init(name: String, age: Int, address: String) {
            self.name = name
            self.age = age
            self.address = address
        }
    }
    
    let localObj = NewStd(name: "Local Studnet", age: 32, address: "Agra")
    
    return localObj
}

var useFunc = helloStd2()
useFunc.address = "Agra near GWL"


// MARK: using protocols in generics

func genFnction <E : UserDetails> (nums : [E]){
    nums.forEach { (element : E) -> Void in
        element.getUserDetails()
    }
}


print(type(of: student))



var arr : [UserDetails] = [nstdStruct, student] // Array of those elements which follows UserDetails protocols

//genFnction(nums: arr)  -- required by global function 'genFnction(nums:)' where 'E' = 'any UserDetails' MARK: Doubt


// MARK: Adding Protocol conformance with an extensions

protocol BioData {
    var NewData : String {get set}
    func sayHello()
}

class UserBio{
    var data : String
    func showData(){
        print(data)
    }
    init(data: String) {
        self.data = data
    }
}

extension UserBio : BioData {
    var NewData: String {
        get {
            return "\(data) getted"
        }
        set{
            data = newValue + "seted"
        }
    }
    
    func sayHello() {
        print("Hello User")
    }
}


var std4 = Abc(name: "Yash", age: 8, address: "Mathura")
var std5 = Abc(name: "Raju", age: 86, address: "Delhi")


// protocols with collection
var arr2 : [UserDetails] = [student, std4, std5]

type(of: arr2)
arr2.forEach { e in
    e.getUserDetails()
}

// MARK: Inheritance in protocols

protocol MyProto : BioData , UserDetails {
    var me : String {get set}
}

class DemoUser : MyProto {
    var me: String
    
    var NewData: String
    
    func sayHello() {
        
    }
    
    var name: String
    
    var age: Int
    
    var address: String
    
    func getUserDetails() {
        print("Name: \(self.name) , Age: \(self.age)")
    }
    
    required init(name: String, age: Int, address: String) {
        self.name = name
        self.age = age
        self.address = address
        self.me = ""
        self.NewData = ""
    }
}

// MARK: Protcol Composition

var combineObject = DemoUser(name: "Shivam", age: 26, address: "London")
func combineTwoProtocols(instance : BioData & UserDetails){
    print("Run")
    instance.getUserDetails()
}

combineTwoProtocols(instance: combineObject)

// MARK: Protocols as enum

// Define a protocol
protocol Describable {
    func description() -> String
}

// Enum conforming to the protocol
enum VehicleType: Describable {
    case car
    case motorcycle
    case bicycle
    
    // Conforming to the protocol
    func description() -> String {
        switch self {
        case .car:
            return "This is a car."
        case .motorcycle:
            return "This is a motorcycle."
        case .bicycle:
            return "This is a bicycle."
        }
    }
}

// Another type conforming to the protocol
struct Person: Describable {
    var name: String
    
    func description() -> String {
        return "This is \(name)."
    }
}

// Using the protocol abstraction
func printDescription(_ describable: Describable) {
    print(describable.description())
}

// Examples
let vehicle: VehicleType = .car
let person = Person(name: "Alice")

printDescription(vehicle)  // Output: This is a car.
printDescription(person)   // Output: This is Alice.



// MARK: Protocol Practice
/* Define a protocol Item with the following:

A property name of type String (read-only).
A property price of type Double (read-only).

 Define another protocol Discountable:

A method applyDiscount(_ percentage: Double) -> Double that calculates the discounted price.
Create two types:

A struct Product that conforms to Item and Discountable.
A struct Service that conforms to Item.

Define a protocol Cart:

An associated type ItemType that conforms to Item.
A method addItem(_ item: ItemType).
A computed property total: Double that calculates the total price of items in the cart.
Create a class ShoppingCart that conforms to Cart:

It should work with both Product and Service.
Add a delegate using a protocol CartDelegate:

Define a method didAddItem(_ item: Item) to notify when an item is added.
Modify ShoppingCart to include a delegate and call this method whenever a new item is added.
Finally, write a function checkout(cart: any Cart) that takes a cart and prints the total price.*/

protocol Item {
    var name : String {get}
    var price : Double {get}
    
}

protocol Discountable {
    func applyDiscount(_ percentage : Double) -> Double
}

struct Product : Item , Discountable {
    var name: String
    
    var price: Double
    
    func applyDiscount(_ percentage: Double) -> Double {
        return 0.0
    }
    
}

class SomeClass {
    var varOne: Int = 0
    
}

struct SomeStruct {
    var varOne: UInt = 0
    
}


//SomeClass().varOne = "weggty"
class Cl1 {
    var something: String
    init?(something: String) {
        return nil
    }
}

class Cl2 {
    
}


enum Xyz: Int {
    case a, b = -15, c, d
}

var aasdf = Cl1(something: "asdfa")
print(Xyz.c.rawValue)


struct Employee {
    var name: String
    var mob: Int
}

//MARK: Optional protocol:
@objc protocol CounterDataSource {
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement: Int { get }
}
optional protocol without optional :
protocol ABC{
    func doSomething () 
}

extension ABC {
    func doSomething() {
    }
}
// know the function doSomething is optional for class XYZ as its already defined in its extended type 
// But XYZ can still override this function is required but not necessary 
class XYZ : ABC {
}

