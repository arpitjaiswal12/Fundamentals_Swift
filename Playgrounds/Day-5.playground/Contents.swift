// MARK: Enumeration :
enum Direction {
    case east
    case west //16
    case north //17
    case south //18
    
    var setDirection : Int {
        get {
            return 10
        }
        set{
            print(newValue)
        }
    } // Enums must not contain stored properties --> beacuse it just represent the data not for storing the data :
    // the enum have computed values -> they dont store value it just simply compute an value
    
    static var directionValue : Int = 0; // Enum have static properties not storage properties as the static properties belong to enum type itsel not the case's of enum ::: which means enum case will share the common block of static memory among them and only called by enum reference
    
    func getDescription () -> String {
        switch self {
        case .east:
            return "Pointing towards east"
        case .west:
            return "Pointing towards West"
        case .north:
            return "Pointing towards north"
        case .south:
            return "Pointing towards south"
        
        /* default: // Default will never be executed --> when we create an type enum we must need to select an particular case or move to a particular state
            return "Not Working yet"*/
        
                
        }
    }
}

var currentDirection : Direction = .west
Direction.directionValue = 12 // only enum can call the static value not the case itself

// ** error ** currentDirection.directionValue //Static member 'directionValue' cannot be used on instance of type 'Direction'

currentDirection.setDirection
//var currentDirection  = Direction.west

var ans = currentDirection.getDescription()
print(ans)
print(currentDirection)

enum Gender : String {
    // case male = String(123) //Raw value for enum case must be a literal --> enum work with raw values and this raw values must be literals (fixed values i.e, integer, string , float , double) --> this literals does compute in run time while String(123) computed using runTime, for this values must be provided during complie time
    // case female = "Its A male gender" // Each raw value must be unique within its enumeration declaration.
    case female
    case male = "Its A male gender"
}

var g = Gender.male
print(g) // o:p - male. why? swift automatically display name of case itself, by default its shows that which case i am refering
print(g.rawValue) // just print raw value associated with a particular case
print(type(of: String(123)))

//Swift does not support optional raw value types : beacuse case ke value hamesh valid hone chiye , fixed value , and optional will create confusion

/*enum items : Int? {
    case a
    case b = 12
}*/


//enum items : Any { // We can
//    // case a = 34 // before assign an raw value eum must have raw type
//    case b = "Hello"
//    case c
//}

// enum with associated values
enum BarCode  {
    case upc(Int,Float,Int)
//    case upc(Int,Int(Float),Int)  this will not work as complie time as it computed only on runtime
    case qrCode(String?)
}

// Raw values - they are of same type , must be pre-define , and directly associated with each case
// Associated Values - they can be dynamic for each case, and tehy can be optional
var code1 = BarCode.upc(12, 23, Int(63.25))
code1 = .qrCode(nil)
// print(code1!) //Cannot force unwrap value of non-optional type 'BarCode' --> this has type barcode
print(code1)
code1 = .qrCode("This is valid qr code")


enum Age : Int{
    case age1 = 12
    case age2
    case age3
}

var ageValues = Age(rawValue: 12)
var newValues = Age(rawValue: 13)
ageValues?.rawValue // This raw value can be nil also has it is exist or not

// MARK: Type Casting
/* The concept of typecasting work on the behalf of parent and child class relationship or more specifically call an base and subclass concept..
let us assume an example of subclasses which are get inherit from base class, this concept of typecasting in terms of class work with permitive data types as this data types also work with sub class and base class concept. */

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

/// Song Class
///
class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

var x = Movie(name: "Casablanca", director: "Michael Curtiz");
print(type(of: x))
let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
 //print(type(of: library)) // o:p -> Array<MediaItem>  beacuse it give type of parent class

// Now if i need to count the each object in the above array belongs to which subclass i need to check each object data type, so "is" keyword is used to check the data type of its subclass

var MovieCount = 0 , SongCount = 0 ;
for element in library{
    if element is Movie {
        MovieCount += 1
        print(type(of: element))
        print("Movie: \(element.name), dir. ")
    }
    else if element is Song{
        SongCount += 1;
    }
}


print("The Element of movies are \(MovieCount) and songs are \(SongCount)")

for item in library {
    if let movie = item as? Movie {
        print(type(of: movie))
        print("Movie: \(movie.name), dir. \(movie.director)")               // MARK: Doubt
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}

// MARK: Function Revision
//
//func greet(_ : String)-> String{
//    return _ + "Hello" // this will not work
//}
//greet("Jon")

func add(_ x : Int, b: Int , _ c : Int = 12) -> Int {
    // x = 12; // error : Cannot assign to value: 'x' is a 'let' constant // Function parameters are constant by default
    return x + b + c
}

//add(14, 5) // Error : Missing Argument
//add( b: 5, a: 4, c: 2) // Error : Argument 'a' must precede argument 'b' , means argument must be in order
add(7, b: 4, 8)

//MARK:	 Variadic parameter

func addValues (num nums : Int...) -> Int {
    type(of: nums) // Array<Int>
    var sum : Double = 0;
    for e in nums {
        sum += Double(e);
    }
    return Int(sum)
}

addValues(num: 1,2,3,4,5)
// Handling an optional
func addValues2 (num nums : Int?...) -> Int {
    print(type(of: nums)) // Array<Int>
    var sum : Double = 0;
    var sum2 : Double = 0;
    for e in nums {
        if let e {
            sum += Double(e);
        }
        guard let e else {return Int(sum2)} // This will return function with calcualted value till nul encounter
        sum2 += Double(e);
    }
    print(sum2)
    return Int(sum)
}

addValues2(num: 1,2,3,nil,5,6)

func addValues3 (num nums : [Int?]...) -> Int {
    print(type(of: nums)) // Array<Int>
    var sum2 : Double = 0;
    print(nums)
    for e in nums {
        for x in e{
            guard let x else {
                return Int(sum2);
            }
            sum2 += Double(x)
        }
    }
    print(sum2)
    return Int(sum2)
}

addValues3(num: [1,2,3,nil,5,nil])

// in-out parameters
// Parameters inside a function are const by default you can not change the value of parameter inside a function

func addNum( /* var a: Int // Worning: var' in this position is interpreted as an argument label */
    a: inout Int, b:Int , c:Int) -> Int {
    //a = 12; // Function parameters asre const by default
    // if you need to make it varibale you need to add inout  kwyword just before the parameter type
    // You place an ampersand (&) directly before a variable’s name when you pass it as an argument to an in-out parameter, to indicate that it can be modified by the function.
        
        a = 10
    return a
}
var a = 12;
addNum(a: &a, b: 2, c: 3)

// function to swap values of two numnbers

func swap(_ a: inout Int, n2 b : inout Int){
    var temp : Int;
    temp = a;
    a = b;
    b = temp;
}

var num1 = 12
var num2 = 13

swap(&num1, n2: &num2)
print("the swap value of num1 and num2 is num1: \(num1) and num2: \(num2)")


// Accessing an same memory location with in a function is not possible in swift
var y1  = 12

func sumNum(a : inout Int) -> Int{
    a += y1
    return a
}
//sumNum(a: &y1)

var f = 5

func abc(a : inout Int) -> Int {
//    print(f)
//    a += f
    // the above both causes run time error it get complie successfully but cause an run time error beacuse : accessing the same memory location for reading-writing is not possible simultaneously
    print(a)
    return a
}

abc(a: &f)

//Function Types as Parameter Types

func addTwoInts(_ x : Int, _ y : Int) -> Int {
    return x + y
}
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

func abc() -> Bool {
    var title : String? = "Ok"
    
    guard title == "ok" else{
        return false;
    }
    return true
}
print(abc())

//Functions having, different types and no. of parameters can have same name

func calValue(){
    
}
func calValue(value : Float,Value: Int){
    
}

// Calculated Values:
var num12 = 12
var num22 = 13

func calValue(value : Int, value2: Int) -> Int{
    return value + value2
}

calValue(value: num12, value2: num22)

// or calculated value
// calculated variable are basically functions
// generally good for when you don't need to pass data in function
var calculatedvalue : Int {
    return num12 + num22
}


