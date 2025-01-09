import UIKit

// *** Strings ***

//// Q1 -> Substring
//var greeting = "Hello, World"
//var index = greeting.firstIndex(of: "W") ?? greeting.endIndex
//print (greeting[index..<greeting.endIndex])


//// Q2 -> String Reversal
//var g2 = ""
//var ind = greeting.endIndex
//for chr in greeting.reversed() {
//    g2.append(chr)
//}
//print(g2)


//// Q3 -> Occurences
//var s3 = "Hello World"
//var count = 0
//
//for chr in s3 {
//    if chr == "o" { count+=1 }
//}
//print(count)



// Q4 -> Removal of whitespaces
//var s4: String = "  Hello, World   "


//var ind: String.Index?
//var ind2: String.Index?
//for index in s4.indices {
//    if s4[index] != " " {
//        ind = index
//        break
//    }
//}
//
//let r1 = s4.startIndex ..< (ind ?? s4.endIndex)
//s4.removeSubrange(r1)
//
//for index in s4.indices {
//    if s4[index] != " " { ind2 = index }
//}
//
//print(s4[ind ?? s4.index(before: s4.endIndex)])
//print(s4[ind2 ?? s4.index(before: s4.endIndex)])
//
//let r2 = s4.index(after:(ind2 ?? s4.startIndex)) ..< s4.endIndex
//
//s4.removeSubrange(r2)
//
//print(s4)



//s4 = s4.trimmingCharacters(in: .whitespaces)
//print(s4)


// Q5 -> Replace Characters

//var str = "Hello there"
//str = str.replacingOccurrences(of: "o", with: "a")
//print(str)
//
//print(str.hasPrefix("hello"))
//print(str.hasSuffix("There"))



// *** Arrays ***

// Q1 MaxElement
//var arr: [Int] = [4,5,3,1,2]
//var maxElement: Int = arr.max()!
//// Force unwrap
//print(maxElement)


// Q2 Reversal
//var arr2: [Int] = [1, 2, 3, 4, 5]
//var count = 0;
//while count<(arr2.count)/2{
//    arr2.swapAt(count, arr2.count-1-count)
//    count+=1;
//}
//print(arr2)


// Q3 Remove duplicates
//var arr2: [Int] = [4,2,3,1,4,2,3,1,5,4,5]
//arr2.sort()
//var index = 0
//while index < arr2.count-1 {
//    if(arr2[index] == arr2[index+1]) { arr2.remove(at: index) }
//    else { index += 1 }
//}
//print(arr2)


// Q4 Find element
//var arr: [Int] = [1,2,3,4,5]
//print(arr.contains(3))
//print(arr.firstIndex(of: 3)!)



// *** Sets ***

//var set1: Set<Int> = []
//set1.insert(1)
//set1.insert(1)
//print(set1)


//var set1: Set<Int> = [1,2,3,4,5]
//var set2: Set<Int> = [4,5,6,7,8]

//print()

//print(set1.union(set2))
//print(set1.isSubset(of: set2))
//print(set1.symmetricDifference(set2))
//
//for itr in set1 {
//    if(itr%2==0) { set1.remove(itr) }
//}
//print(set1)


//var str = "Hello There"
//var set1: Set<Character> = []
//
//for itr in str {
//    if(itr != " ") { set1.insert(itr) }
//}
//
//print(set1)


// *** Dictionary ***

//var dict1: [Character: Int] = ["A":1, "B":2]
//var dict2: [Character: Int] = ["C":3, "D":4]
//
//for (key, val) in dict1 {
//    print(key, val)
//}



// *** Functions ***


// * variadic parameters *

//func f1 (_ nums: Int...) -> Int {
//    var temp = 0
//    for num in nums {
//        temp += num
//    }
//    return temp
//}
//
//print(f1(1,2,4,3,5))


// * In-out functions *

//func f2 (n1: inout Int, n2: Int){
//    n1 = n1 + n2
//}
//
//var v1 = 5
//var v2 = 10
//f2(n1: &v1, n2: v2)
//print(v1)


// * Function types *

//func f3 (val: Int) -> () -> Int {
//    func f1 () -> Int {
//        return val;
//    }
//    return f1
//}
//
//var f4 = f3(val: 5)
//print(f4())


// *** Enums ***

//enum ABC: Int  {
//    case v1 = 1, v2, v3
//}
//
//print(ABC.v2)
//print(ABC.v2.rawValue)
//
//enum Itr: CaseIterable {
//    case i1, i2, i3
//}
//
//print(Itr.allCases.count)


enum Shape {
    case rectangle (Int,Int)
    case square (Int)
}

func Area (_ shape: Shape) -> Int {
    switch shape {
    case .rectangle(let w, let h):
            return w * h
    case .square(let s):
            return s * s
    }
}

print(Area(Shape.rectangle(4,5)))
print(Area(Shape.square(4)))


//enum dir {
//    case north, south
//    mutating func turn() {
//        switch self {
//        case .north:
//            self = .south
//        case .south:
//            self = .north
//        }
//    }
//}
//
//var v1 = dir.north
//v1.turn()
//print(v1)


// *** Structures and Classes ***

//struct st1 {
//    var v1: Int
//    var v2: Int
//}
//
//var inst1 = st1(v1: 1, v2: 2)
//print(inst1.v1)
//
//
//class cl1 {
//    var v1: Int = 5
//    var v2: Int = 6
//}
//
//var inst2 = cl1()
//var inst3 = inst2
//inst3.v2 = 10
//print(inst2.v2)


// *** Properties ***

//struct St1 {
//    var length: Int
//    var breadth: Int
//
//    mutating func lengthInc() {
//        length += 10
//    }
//
//    var area: Int {
//        return length * breadth
//    }
//}
//
//var inst1 = St1(length: 10, breadth: 20)
//print(inst1.area)
//inst1.lengthInc()
//print(inst1.area)
//
//
//
//var str1 = "Hello There"
//var str2 = str1[str1.startIndex]
//var str3 = str1[str1.index(before: str1.endIndex)]
//str1.remove(at: str1.startIndex)
//str1.remove(at: str1.index(before: str1.endIndex))
//
//str1.insert(str3, at:str1.startIndex)
//str1.insert(str2, at:str1.endIndex)
//print(str1)


//struct St1 {
//    static let v1 = 5
//    static func func1() {
//        print("This method belongs to the struct")
//    }
//}
//
//print(St1.v1)
//print(St1.func1())


// * Optional *

//var age: Int?
//age = 15
//
//if var newAge = age {    // Optional Binding
//    print("Not nil")
//}
//else {
//    print("nil")
//}

func xyz (_ p1:String) -> String {
     return p1
}

print(xyz("Hello"))

var xyz = 123
var def = 456
var s1 = "This is \(xyz + def)"
var s2 = "xyz"
var s4 = "abc"

s1 = String(xyz) + s2

print(s1)
