// Type aliases

typealias arpit = String

var x : arpit;
x = "Hello";
print(x)


var a : String = "123"
var b : Int? = Int(a);

// If let for dealing with optionals
if let c = b {
    print(c)
}
else {
    print("Value is not converted ")
}

// This is the forced unwrapping
print(b!)

var name : String? = "Hello"

// optional chaining
print(name?.uppercased() ?? "Not have value")

if let p = name {
    print("value is not null \(p)")
} else{
    print("value is null")
}

if let name {
    print("value is not null \(name)")
} else{
    print("value is null")
}

// we can use if var to deal with optionals but the value in var can be changed inside thet scope
if var p = name {
    p = "Hello India !"
    print("value is not null \(p)")
} else{
    print("value is null")
}

// Another way of handling with optionals is : guardLet syntx :: when we need to handle optional value in an specific scope i.e function if it present then access the value or not present then return some statement

func getName(name: String?){
    guard let unWrappedValue = name else{
        print("No value exist !!")
        return ;
    }
    print("Hello, \(unWrappedValue)")
}

getName(name: "Rohan")
getName(name: nil)

//multiple optional binding in single if let

// when number to string converstion done successfully
if let firstNum = Int("12"), let secondNum = Int("25") , firstNum < secondNum {
    print ("Unwrapped done --> \(firstNum) , \(secondNum)")
}
else{
    print("values can'nt converted ")
}

//when number to string converstion not done successfully
if let firstNum = Int("12"), let secondNum = Int("25") , firstNum < secondNum {
    print ("Unwrapped done --> \(firstNum) , \(secondNum)")
}
else{
    print("values can'nt converted ")
}

//Handle using FallBack values  -  if optional value is not exist then we assign an default value to it

var age : Int?;
print (age ?? "Age is not exist")
var age1 : Int? = 22;
print (age1 ?? "Age is not exist")

// To Avoid forced unwrapping we can use - ****** optional chaining ****

class Address{
    var street : String;
    
    init (street : String){
        self.street=street;
    }
}

class Person {
    var name : String;
    var address : Address?;
    //    var age : Int
    
    init(name: String, address: Address?) {
        self.name = name
        self.address = address
    }
}

// let p1 = Person("shiv",23); /// if we do this throw an error - missing argument labels 'name:age:' in call

let p1 = Person(name : "Akshansh Gupta",  address: Address(street: "74 Ram nagar, indore"))
//let p1 = Person(name : "Akshansh Gupta",  address: nil)

print(p1.address?.street ?? "Null Address") // This is wrapped value i need to unwrapped this value

print("Username \(p1.name)")

if let location = p1.address?.street{
    print("UserAddress in iflet \(location)")
}
else{
    print("Address not found !")
}

func getAddress(obj : Person) -> String{
    guard let location = obj.address?.street else{
        //        print("Address is not found !!")
        return "Address is not found !!";
    }
    //    print("UserAddress in guardlet \(location)")
    return "UserAddress in guardlet \(location)";
}

getAddress(obj: p1)


//diving more deep to optional chaining
//let us consider an residence having an collection of rooms with their corresponding names

class PersonNew {
    var residence : Residence?
}

class Residence {
    var rooms : [Room] = []
    var numberOfRooms : Int { // This is a computational property
        return rooms.count;
    }
    
    subscript(i : Int) -> Room {
        get{
            return rooms[i]
        }
        set{
            rooms[i] = newValue;
        }
    }
    
    func printNumberOfRooms() {
        print("The Number of rooms is \(numberOfRooms)")
    }
    
    var address: AddressNew?;
}

class Room{
    var name: String;
    
    init(name: String) {
        self.name = name
    }
}

class AddressNew{
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIdentifier() -> String? { // Function Returning the optional
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}


var userAddress = AddressNew();
userAddress.buildingName = "Zoo"
userAddress.buildingNumber = "145B"
userAddress.street = "Ram Vilas"

var xp = userAddress.buildingIdentifier();
print(xp ?? "Not exist")

var r1 = Room(name: "Hydra - Lab")
var r2 = Room(name: "Zonal")
var r3 = Room(name: "Jio")


var res = Residence()
res.rooms = [r1,r2,r3]
print(res.printNumberOfRooms())
res.address = userAddress;

var person1 = PersonNew();
person1.residence = res


var addData : String? = person1.residence?.address?.buildingIdentifier();

print(person1.residence?.address?.buildingIdentifier() ?? "Address Not Found")

if let identifier = person1.residence?.address?.buildingIdentifier() {
    print(identifier)
}
else{
    print("Not Good !")
}

// optionals can be used both as return types and function parameters :
// searches through an array to find the first number greater than a specified value.

func findElement(arr array : [Int] , key ele : Int) -> Int? {
    for e in array{
        if e > ele {
            return e;
        }
    }
    return nil;
}

var num = [4,7,5,9,6,54,14,47]
let ans = findElement(arr: num, key: 45)

print(ans ?? "Not exist")

let ans1 = findElement(arr: num, key: 85)
print(ans1 ?? "Not exist")

//Optional as a Parameter
//An optional parameter in a function allows you to pass either a value or nil.

// function is to find an element in the array
func findNum(arr array : [Int] , key ele : Int?) -> Int? {
    var cnt = 0;
    for e in array {
        if e == ele {
            return cnt;
        }
        cnt += 1;
    }
    return nil
}

var t : Int? = 54;
print(findNum(arr: num, key: t) ?? " element not found !")

