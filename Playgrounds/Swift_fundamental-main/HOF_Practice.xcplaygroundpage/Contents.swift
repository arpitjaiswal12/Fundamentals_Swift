// Given an array of integers [1, 2, 3, 4, 5], use map to create a new array where each element is squared.
var q1 = [1, 2, 3, 4, 5]
var a1 = q1.map { e in
    e * e
}
print(a1)

//Convert an array of strings ["swift", "programming", "map"] to uppercase using map.
//Expected output: ["SWIFT", "PROGRAMMING", "MAP"]

var q2 = ["swift", "programming", "map"]

var a2 = q2.map { e in
    e.uppercased()
}

print(a2)

//You have an array of tuples [(name: "John", age: 30), (name: "Alice", age: 25), (name: "Bob", age: 35)]. Use map to extract only the names.
//Expected output: ["John", "Alice", "Bob"]

var q3 = [(name: "John", age: 30), (name: "Alice", age: 25), (name: "Bob", age: 35)]

var a3 = q3.map { (name: String, age: Int) in
    name
}
print(a3)

//Given an array of optional integers [1, nil, 3, nil, 5], use map to replace nil with 0.
//Expected output: [1, 0, 3, 0, 5]
var q4 = [1, nil, 3, nil, 5]

var a4 = q4.map {
    guard let x = $0 else{
        return 0
    }
    return x
}
q4.compactMap { $0 }
print(a4)

//Given an array of integers [1, 2, 3, 4, 5], first double each number using map, and then convert them to strings using another map.

var q5 = [1, 2, 3, 4, 5]

q5.map { e in
    e*2
}.map { x in
    String(x)
}

print(q5)
q5.forEach { e in
    e*2
}
print(q5)

//Nested Array Transformation:
/* Given a 2D array of integers:
 let matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
 Use map to create a new 2D array where each element is squared.
 Expected output:
 
 [[1, 4, 9], [16, 25, 36], [49, 64, 81]]
 */

var q6 : Array<Array<Any>> = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

extension Array<Array<Any>> {
    func map2dArray (){
        self.map { e in
            e.map { p in
//                p * p
            }
        }
    }
}

class abc {
    private var x : Int
    init(x: Int) {
        self.x = x
    }
}
extension abc {
    func pqr (){
        x += 1
       print(x)
    }
}
var obj = abc(x: 12)
obj.pqr()
print("***")
q6.map2dArray()



//var a6 = q6.map { e in
//    e.map { x in
//        x*x
//    }
//}
//print(a6)


/* Given a dictionary of student names and their grades:

let students = ["Alice": 85, "Bob": 92, "Clara": 78, "David": 90]
Use map to create a new dictionary where grades are categorized as "Pass" (≥ 80) or "Fail".
Expected output:

["Alice": "Pass", "Bob": "Pass", "Clara": "Fail", "David": "Pass"] */

var q7 = ["Alice": 85, "Bob": 92, "Clara": 78, "David": 90]

var a7 = q7.mapValues { e in
    e >= 80 ?"Pass" : "Fail"
}

print(a7)

/* Custom Object Transformation:
You have a class representing people:

class Person {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let people = [Person(name: "Alice", age: 30), Person(name: "Bob", age: 25)]
Use map to transform this array into an array of strings formatted as "<name> is <age> years old".
Expected output: ["Alice is 30 years old", "Bob is 25 years old"] */

class Person {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let people = [Person(name: "Alice", age: 30), Person(name: "Bob", age: 25)]
people.map { Person in
    return "\(Person.name) is \(Person.age) years old"
}

/* Handling Optional Values in a Dictionary:
Given a dictionary of city populations (some of which are nil):

let cities = ["New York": 8_336_817, "Los Angeles": nil, "Chicago": 2_693_976, "Houston": nil]
Use map to create an array of non-nil populations formatted as "City: <Population>".
Expected output: ["New York: 8336817", "Chicago: 2693976"] */

let cities = ["New York": 8_336_817, "Los Angeles": nil, "Chicago": 2_693_976, "Houston": nil]

var ans = cities.mapValues {
    if let val = $0 {
        print(val)
        return val
    }
    return 0
    
}.filter { e in
    return e.value != 0
}

print(ans)


// MARK: Filter

//Given an array of integers [1, 2, 3, 4, 5], use filter to create a new array containing only the even numbers.
//Expected output: [2, 4]

var q8 = [1, 2, 3, 4, 5]
var a8 = q8.filter { e in
    e % 2 == 0
}
print(a8)

//
//Filtering Based on a Condition:
//Given an array of tuples representing people and their ages [(name: "John", age: 30), (name: "Alice", age: 25), (name: "Bob", age: 35)], filter out people older than 30.
//Expected output: [(name: "Alice", age: 25), (name: "John", age: 30)]

var q9 = [(name: "John", age: 30), (name: "Alice", age: 25), (name: "Bob", age: 35)]
var a9 = q9.filter { (name: String, age: Int) in
    print(age)
    print(age <= 30)
    return age <= 30
}
print(a9)


//Given an array of optional integers [1, nil, 3, nil, 5], use filter to remove all nil values.
//Expected output: [1, 3, 5]

var q10 = [1, nil, 3, nil, 5]
var a10 = q10.filter {
    if let x = $0 {
        return true
    }
    return false
}

print(a10)

//From an array of integers [10, 15, 20, 25, 30], use filter to find numbers divisible by both 5 and 10.
//Expected output: [10, 20, 30]

var q11 = [10, 15, 20, 25, 30]
var a11 = q11.filter { e in
    return e % 5 == 0 && e % 10 == 0
}

//Filter out negative numbers from the array [-1, 2, -3, 4, 5] and then print their squares using filter and map.
//Expected output: [4, 16, 25]

var q12 = [-1, 2, -3, 4, 5]
var a12 = q12.filter { e in
    e > 0
}.map { e in
    e*e
}

print(a12)

// MARK: Reduce
//Concatenate Strings:
//Concatenate an array of strings ["Swift", "is", "awesome"] into a single string separated by spaces using reduce.
//Expected output: "Swift is awesome"
 var q13 = ["Swift", "is", "awesome"]
var a13 = q13.reduce(""){prev , e in
    prev + e +  " "
}

print(a13)

//Use reduce to find the maximum value in an array [3, 1, 4, 1, 5, 9].
//Expected output: 9

var q14 = [3, 1, 4, 1, 5, 9]

var a14 =  q14.reduce(q14[0]) { partialResult, e in
    max(e, partialResult)
}


//Given an array of strings ["hello", "world"], use reduce to count the total number of characters.
//Expected output: 10

var a15 = q13.reduce(0) { partialResult, e in
    
    partialResult + e.count
}

/* Given a sentence as a string:

let sentence = "Swift is fast Swift is powerful Swift is fun"
Use reduce to count how many times each word appears in the sentence.
Expected output:

["Swift": 3, "is": 3, "fast": 1, "powerful": 1, "fun": 1]*/

