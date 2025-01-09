import UIKit

// *** Strings ***


//var greeting = "This is a string"
//print(greeting)
//print("Last character: \(greeting[greeting.index(before: greeting.endIndex)])")
//// or
//print("Last character: \(greeting.last!)")
//print("The string in middle is '\(greeting)' interpolated")


//var greeting = "This is a string"
//var index = greeting.firstIndex(of: "a") ?? greeting.endIndex
//print(greeting[..<index])
//print(greeting[greeting.index(greeting.startIndex, offsetBy: 3)])


//var string1 = "Hello there"
//if(string1.hasPrefix("Hello")) { print("Prefix exists") }
//if(string1.hasSuffix("There")) { print("Suffix exists") }


//var string1 = "Hello"
//string1.insert("!", at: string1.endIndex)
//print(string1)
//string1.insert(contentsOf: " there!", at: string1.endIndex)
//print(string1)



// *** Collection Types ***


// * Arrays *

//var array1 : [String] = ["ABC","DEF","GHI","JKL","MNO"]
//print(array1)
//print(array1[0])
//print(array1.count)
//print(array1.isEmpty)
//array1.append("PQR")
//print(array1)


//var array1 : [String] = ["ABC","DEF","GHI","JKL","MNO"]
//array1.removeLast()
//print(array1)
//array1.removeFirst()
//print(array1)
//array1.insert("XYZ", at: 1)
//array1.insert("ABC", at: 0)
//print(array1)
//array1.remove(at: 2)
//print(array1)
//print(array1[1...3])


//var array1 : [String] = ["ABC","DEF","GHI","JKL","MNO"]
//for items in array1 { print(items) }


// * Sets *

//var set1: Set<String> = ["ABC","DEF","GHI","JKL","MNO"]
//print(set1)
//print(set1.count)
//set1.insert("PQR")
//set1.remove("DEF")
//print(set1)
//print(set1.contains("XYZ"))
//print(set1.isEmpty)


//var set1: Set = [1,2,3,4,5]
//var set2: Set = [4,5,6,7,8]
//print(set1.union(set2))
//print(set1.intersection(set2))
//print(set1.isDisjoint(with: set2))
//print(set1.isSubset(of: set2))
//print(set1.isSuperset(of: set2))


// * Dictionary *

//var dict1: [String: Int] = ["ABC":1,"DEF":2,"GHI":3]
//print(dict1)
//print(dict1.count)
//dict1["XYZ"] = 4
//print(dict1)
//dict1.removeValue(forKey: "GHI")
//print(dict1)
//print()
//for(key,value) in dict1 {
//    print(key,":",value)
//}


// *** Control Flow ***


// * For Loop *

//var n1 = 3
//for _ in 1...n1 {
//    print("underscore")
//}
//print()
//
//var array1 : [String] = ["ABC","DEF","GHI","JKL","MNO"]
//for item in array1[2...] { print(item) }
//print()
//for item in array1[...2] { print(item) }


// * While Loop *
// * Repeat while loop *


// * Switch-case *
//var s = 5
//let temp = switch s {
//    case 1: 1
//    case 5: 5
//    default: 0
//}
//print(temp)

// Tuples can be used to test multiple switch values in the same statement

//let anotherCharacter: Character = "A"
//switch anotherCharacter {
//case "a":
//case "A":
//    print("The letter A")
//default:
//    print("Not the letter A")
//}

//let yetAnotherPoint = (1, -1)
//switch yetAnotherPoint {
//case let (x, y) where x == y:
//    print("(\(x), \(y)) is on the line x == y")
//case let (x, y) where x == -y:
//    print("(\(x), \(y)) is on the line x == -y")
//case let (x, y):
//    print("(\(x), \(y)) is just some random point")
//}


// *** Functions ***

//func function() -> Int {
//    return 5;
//}
//
//print(function())


//func function (data: Int) -> (Int)? {
//    if(data==0) { return nil }
//    return data;
//}
//
//print(function(data: 0))
//print(function(data: 5))


//func greeting(for person: String) -> String {
//    return "Hello, " + person + "!"
//}
//print(greeting(for: "Dave"))


//func mutate(temp: inout Int){
//    temp = 10
//}
//
//var tempVar = 5
//mutate(temp: &tempVar)
//print(tempVar)


// *** Closures ***

//var names: [String] = ["ABC", "GHI", "DEF"]

//var reverseSorted = names.sorted(by: { (s1: String, s2: String) -> Bool in
//    return s1 < s2
//})

//var reverseSorted = names.sorted(by: { s1, s2 in s1 < s2 })

//var reverseSorted = names.sorted(by: { $0 > $1 } )

//var reverseSorted = names.sorted(by: >)
//
//print(reverseSorted)


// * Capturing Values *

//func outerFunction(amount: Int) -> () -> Int {
//    var temp = 0
//    func increment() -> Int {
//        temp += amount
//        return temp
//    }
//    return increment
//}
//
//let incrementByTwo = outerFunction(amount: 2)
//print(incrementByTwo())
//print(incrementByTwo())
//print(incrementByTwo())


// *** Enumeration ***

//enum directions: Int {
//    case north, east, west, south
//}

// // print(directions.north.rawValue)

//print(directions.north)
//print(directions.allCases.count)
//print()
//for dir in directions.allCases {
//    print(dir)
//}


// *** Structures and Classes ***

//struct rectangleStruct {
//    var height: Int = 20
//    var width: Int = 30
//}
//
//class rectangleClass {
//    var height: Int = 20
//    var width: Int = 30
//}

//var inst3 = rectangleStruct()
//var inst4 = inst1
//inst4.height = 60
//print(inst3.height)
//print(inst4.height)

//var inst1 = rectangleClass()
//var inst2 = inst1
//inst2.height = 60
//print(inst1.height)
//print(inst2.height)
//
//print(inst1 === inst2)


// *** Subscript ***

//struct Array {
//    var values: [Int]
//    
//    subscript (index: Int) -> Int {
//        return values[index]
//    }
//}
//
//var arr = Array(values: [1,2,3])
//print(arr[0])
//print(arr.values)


// *** Optional Chaining ***

//struct Structure {
//    var value: Int?
//}
//
//var structInstance = Structure()
//print(structInstance.value?)


//var temp = 15
//switch temp {
//case 0...10, 11...20:
//    print("It's cold")
//case 21...30:
//    print("It's warm")
//case 31...40:
//    print("It's somewhat warm")
//    fallthrough
//default: print("It's hot")
//}

//func abc (def xyz: Int){
//    print(xyz)
//}
//
//abc(def: 5)

//var var1: Int = 2
//var var2: Int = 3
//
//xyz(v1: &var1, v2:var2)
//print(var1)
//
//func xyz(v1:inout Int, v2: Int){
//    v1 = v1 + v2
//}


//
//struct Structure{
//    var prop: Int = 10
//}
//
//var Inst1 = Structure()
//var Inst2 = Inst1
//Inst2.prop = 20
//print(Inst1.prop)
//print(Inst2.prop)


//func Structure1(amount: Int) -> () -> Int{
//    var temp = 0
//    func increment() -> Int{
//        temp += amount
//        return temp
//    }
//    return increment
//}
//
//var inc = Structure1(amount: 10)
//print(inc())
//print(inc())
//print(inc())


//var arr: [Int]? = [1,2,3,4,5]
//print(arr!)


// Explicit conversion
//var str = "123"
//var optional = Int(str)!
//print(optional)


//var value: Any = 42
//
//if let intValue = value as? Int {
//    print("It's an integer: \(intValue)")
//} else {
//    print("Not an integer")
//}








