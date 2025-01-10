//import UIKit
//
//var greeting = "Hello, playground"
//print(greeting)
//
//  basics.swift
//  swiftPractice
//
//  Created by Tisha Dhamu on 06/01/25.


//import Foundation
//
//class XYZ{
//    
//    fileprivate var A=10
//    
//}
//
//class ABC: XYZ{
//    func set(){
//        print(A)
//    }
//}
//var obj=ABC()
//obj.set()

//**************************** **********************

struct A{
    
}

//var a=A()
//var b=a
//let mirror = Mirror(reflecting: a)
//print(mirror)


//****************** inheritance *********************


//class Animal{
//    var name:String
//    
//    init(Fname:String){
//        self.name=Fname
//        
//    }
//    func sound(){
//        print("this animal makes sound ")
//    }
//}
//
//class cat:Animal{
//    override func sound()
//    {print("this makes sound meow!")
//    }
//}
//
//var cat1=cat(Fname:"pheebs")
//cat1.sound()

//****************  non-primitive data types  ********************

////arrays

//var arr=["joey","chandler","monica","rachel","pheebs","ross"]
//print(arr)
//arr[2]="chandler's wife"

////accessing array elements

//print(arr)

////immutable array

//let arr1=["joey","chandler","monica","rachel","pheebs","ross"]

////arr1[1]="anything"         //gives an error because arr1 is immutable

////dictionaries
//var dict : [ String :] = [1:"one",2:"two",3:"three"]
//print(dict)
//print(dict[4] ?? "5")
//
//
//////tuple
//
//var tup=(1,"apple",true)
//print(tup)
//
//var name = tup.1
//print(name)
//for name in arr1{
//    print(name)



//************************ in-out parameters **************************
//these parameter are used to modify the variable outside the function

/*func modify(num : inout Int){
    num*=5
}

var num1=10
modify(num : &num1)
*/


//***************** optionals ****************************

//var number:Int?
//
//if var n : Int = number
//{print("number is \(number)")
//}
//else{ print("there is no value")
//}


//******************* fallback value **********************

//another way of handling missing values when dealing with optionals

//-------syntax----------
// not_nil_value ?? alternate_nil_value

//let name: String? = "intern"
//let greeting = "Hello, " + (name ?? "friend") + "!"
//print("hello \(name ?? "friend") !")

//*******************force unwrapping**********************

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)            //here initializer of int conversion returns optional, hence convertedNumber is an                                                      optional type

let number = convertedNumber!                        //this is forced unwrapping

guard let number = convertedNumber else { 
//    fatalError("The number was invalid")
}


//---in continuation-----


//var a="123"
//var n=Int(a)

//var temp=n!
//if var temp=n{
//print("value is there")
//}

//else {
//print("value is absent")
//    
//}

//string equivalence

//var temp1: String = "Alice"
//var temp2="abc"
//if temp2 == temp1 {
//    print("Hello, \(temp1)!")
//} else {
//    print("Name is nil.")
//}

//*****ternary operator***************

//var age=20
//
//var canvote = age>18 ? "yes" : "no"
//print(canvote)


//******************* Strings *************************

//var str = "hello intern"


//
//str[str.startIndex]
////output h
//
//
//str[str.index(before:str.endIndex)]
//
//str[str.index(after:str.startIndex) ]
//
//str[str.index(str.startIndex , offsetBy: 6)]
//
//
//for char in str{
//    print(char)
//}
//
////inserting into string literal
//
//str.insert("_",at:str.index(str.startIndex,offsetBy: 5))


//**********************Avinash Mulewa sir's task***************************

//  given a string as "abcdefg", output should be in first the character whose index has been given followed by the rest of the string but in reversed order
//
//
//func extract(str : String, idx : Int)->String{
//    var res : String = ""
//    var actual_idx = idx-1
//    var eleminated_char : Character = str[str.index(str.startIndex,offsetBy: actual_idx)]
//
//    res += String(eleminated_char)
//    var start = str.count-1
//    
//    while start >= 0{
//        if start==actual_idx{
//            start -= 1
//            continue
//            
//        }
//        
//        else{
//            res += String(str[str.index(str.startIndex , offsetBy : start)])
//            
//        }
//        start -= 1
//        
//    }
//    return res
//}
//
//print(extract(str : "abcdefg" , idx : 3))
//
// 
//
//*************************user-defined data or collection************************************************
////array
//
//var arr : [Int] = []
//
////initialization of an array with pre defined values
//
//var arr1 = Array(repeating : 0.0 , count : 5)
//print(arr1)

//*****************Arya Sir's Q/A****************************

//var n : Int = 10
//var str : String = "the number is \(n)"
//
//var str1 = 10
//var str2 = "the number is"
//
//var str3 = "\(str1) " + str2   //10 the number is
//print(str3)
//
//print("\(str1) \(str2)")
//
//str2+=String(str1)
//
//let defaultColorName = "red"
//var userDefinedColorName: String?   // defaults to nil
//
//
//var colorNameToUse = userDefinedColorName ?? defaultColorName

//****************************optional binding***********************
/*
let possibleNumber = "abc"
let convertedNumber = Int(possibleNumber)

if let actualNumber = convertedNumber{
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}
*/

//*******************  force unwrapping ***************************

//let possibleNumber = "123"
//let convertedNumber = Int(possibleNumber)
//
//
//let number = convertedNumber!                         // TO AVOID THIS
//
////
////guard let number = convertedNumber else {                                               //RECOMMENEDED
////
////}
//
//
//if let number = convertedNumber {
//    
//}

//------------------------- Collections ----------------------------------
//
//var arr1 : [Int] = Array()
//
//var arr2 : [Int] = [1,2,3,4,5]
//
//var arr3 = arr1 + arr2
//print(arr1)
//print(arr2)
//
//print(arr3)
//
////to count no. of elements in an array you can use count
//
//print(arr1.count)
//
////to check if an array is empty or not
//
//if arr1.isEmpty {
//    print("array is empty")
//}
//else {
//    print("array is non-empty")
//}
//
////can add values in an array by two ways
//// 1. either by append property
//
//arr1.append(20)
//print(arr1)
//
//// 2. or by assignment operator
//arr1 += [30]
//print(arr1)
//
//
////one can access element through subscript index
//
//print(arr1[0])
//
//arr2[1...3]=[200]
//print(arr2)
//
////one can insert and remove with the help of insert() and remove() methods
//
//arr2.remove(at : 1)
//print(arr2)
//
////removing at end
//print(arr2.removeLast())
//
//
////using enumerated method to iterate over an array
//
//var arr4 = [10,20,30,40,50]
//
//for (idx , value) in arr4.enumerated(){
//    print("the index is \(idx) and the value is \(value)")
//}
//
//
////*******************  Set *************************
//
//var set : Set<Int> = [1,2,3]
//
////**************************** sets operation ********************
//
//let oddDigits: Set = [1, 3, 5, 7, 9]
//let evenDigits: Set = [0, 2, 4, 6, 8]
//let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
//
//print(oddDigits.intersection(evenDigits))
//print(oddDigits.union(evenDigits).sorted())
//
////***************** dictionaries ******************
//var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//
//airports["APL"] = "Apple International"
//
////airports["APL"] = nil
// print(airports)
//
//for airportCode in airports.keys {
//    print(airportCode)
//}
//
//
////************************ control flow ********************************
//

//var a : Int = 10
//for a in stride(from: 0, to: 20, by: 5){
////    it += 1
////    print(self.a)
//    print(a)
//}
//
//
//for var i in 0...5{
//    i+=1
//    print(i)
//}
//for i in 0...5{
//    print(i+1)
//}

////switch case
//enum direction{
//    case east
//    case west
//    case north
//    case south
//    
//}
//var currentDirection = direction.east
//
//switch currentDirection{
//    
//case .north :
//    print("north direction")
//    
//
//case .south:
//    print("south direction")
//    
//case .east :
//    print("east direction")
//    
//case .west:
//    print("west direction")
//    
//}
//
//
////********************* value binding **************
//
//var point = (2,0)
//
//switch point{
//case (let x,0):
//    print("point \(x) is on x- axis")
//default : print("point is somewher eon the graph")
// 
////
//    
//}
//let someCharacter: Character = "e"
//
//switch someCharacter {
//    
//case "a", "e", "i", "o", "u":
//    print("\(someCharacter) is a vowel")
//
//case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
//    "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
//    print("\(someCharacter) is a consonant")
//
//default:
//    print("\(someCharacter) isn't a vowel or a consonant")
//}
//
//
////
//
//let numberSymbol: Character = "三"  // Chinese symbol for the number 3
//var possibleIntegerValue: Int?
//switch numberSymbol {
//case "1", "١", "一", "๑":
//    possibleIntegerValue = 1
//case "2", "٢", "二","三", "๒":
//    possibleIntegerValue = 2
//    fallthrough
//case "3", "٣","๓":
//    possibleIntegerValue = 3
//    
//case "4", "٤", "四", "๔":
//    possibleIntegerValue = 4
//default:
//    break
//}
//if let integerValue = possibleIntegerValue {
//    print("The integer value of \(numberSymbol) is \(integerValue).")
//} else {
//    print("An integer value couldn't be found for \(numberSymbol).")
//}
//
//
//var n : Int?
//print(n as Any)
//

//
//var score = 3
//if score < 100 {
//    score += 100
//    defer {
//        score -= 100
//    }
//    // Other code that uses the score with its bonus goes here.
//    print(score)
//}
//
//print(score)

//**************** Function ********************

//func greeting(for person: String) -> String {
//    "Hello, " + person + "!"
//}
//
//print(greeting(for : "chandler"))
//


//func som //
//}
//someFunction(name : 1, secondParameterName: 2)

//func stepForward(_ input: Int) -> Int {
//     input += 1
//     return input
//}
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//
//print(stepForward(10))

//func addTwoInts(_ a: Int, _ b: Int) -> Int {
//    return a + b
//}
//func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
//    return a * b
//}
//
//func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//    print("Result: \(mathFunction(a, b))")
//}
//printMathResult(addTwoInts, 3, 5)


