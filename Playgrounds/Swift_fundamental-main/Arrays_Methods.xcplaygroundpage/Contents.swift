import Foundation

                                            //Creating an array :

//1. An empty array
//var arr : [Any] = []

//2. Creates an array containing the elements of a sequence.

/* var num = Array(1...8)
 print(num)
 
 // Mapping an elements of an dictionary to an array
 let namedHues: [String: Int] = ["Vermillion": 18, "Magenta": 302,
 "Gold": 50, "Cerise": 320]
 
 //let arr = Array(namedHues.keys)
 let arr = Array(namedHues.values)
 print(arr) */

//3. Creates a new array containing the specified number of a single, repeated value.

/* let arr = Array(repeating: 5, count: 5)
 print(arr)
 
 4. create an array with a specific amount of memory allocated, but without automatically initializing its elements.
 Syantx : Array(unsafeUninitializedCapacity: <#T##Int#>, initializingWith: <#T##(UnsafeMutableBufferPointer<Element>, Int) -> Void#>)

let arr = Array(unsafeUninitializedCapacity: 5) {
    buffer , count in
    for i in 0..<5 {
        buffer[i] = i+1;
    }
    count = 5;
}

print(arr); */

                                            // Insertion in Array

//1. Adds a new element at the end of the array.

var num : [Int] = [12,4,5,4]
num.reserveCapacity(11)
print(num)
num.append(85);
print(num)

//2. Inserts a new element at the specified position.

//num.insert(38, at: 6)
//print(num)

//var x : [Int] = [];
//var y = ["df"]
//var t = Array(repeating: ["hello"], count: 5)
//var c = Array(1...5)
//
//var xz: Array<String> = []

// 3. insert(contentsOf:at:) Inserts the elements of a sequence into the collection at the specified position.
//var arr1 = [23,45,85,12,32];
var arr1 : [Any] = [23,45,85];
// while giving any to an array this closeRange operator will not work beacuse
//arr1.insert(contentsOf: <#T##Collection#>, at: <#T##Int#>)
arr1.insert(contentsOf: Array(100...103) as [Any], at: 2)
print(arr1)
// Inserting an array
arr1.insert(contentsOf: num, at: 5)
print(arr1)

// This will not work , for resolve this i need to give an Any type to array
var str = ["abc","def","ghi"]
arr1.insert(contentsOf: str, at: 5)
print(arr1)


                                                    // Doubt - 1
var a : Int = 23;
//var c = a ;
var c = String(a);
//var c = a as String;
// "KeyWord" read dataType as a another datatype it do'nt convert it to that data type
print(type(of: c))
print(type(of: a))
//var b : String = a as String


//4. Replaces a range of elements with the elements in the specified collection.

// Syntax: arr1.replaceSubrange(<#T##subrange: Range<Int>##Range<Int>#>, with: <#T##Collection#>)

var collection : [Any?] = ["Hello",74,"S",4.5,"Nice"]

arr1.replaceSubrange(3...6, with: collection) //[23, 45, 100, Optional("Hello"), Optional(74), Optional("S"), Optional(4.5), Optional("Nice"), "ghi", 12, 4, 5, 4, 85, 103, 85]

// TO eliminate this:
print(type(of: collection))
var new_collection : [Any] = []
for e in collection {
    new_collection.append(e!)
}
print(new_collection)
arr1.replaceSubrange(3...7, with: new_collection)
print(arr1)

//5. Reserves enough space to store the specified number of elements.
var arr2 : [Int] = [];
//Synatx : arr2.description.reserveCapacity(<#T##Int#>)

arr2.reserveCapacity(5);

arr2.append(1)
arr2.append(2)
arr2.append(3)
arr2.append(4)
arr2.append(5)
print(arr2)

arr2.append(6)
arr2.append(7)
arr2.append(8)
print(arr2)
print(arr2.count)
arr2.insert(18, at: 8)
print(arr2)

                                                // Combining Arrays

//1.Adds the elements of a sequence or collection to the end of this collection. Syntax : arr2.append(contentsOf: <#T##S#>)

var arr3 : [Any] = [12, "hello",7.5]
var arr4 = [7.4,2.0,3.6]
arr3.append(contentsOf: arr4)
print(arr3)
//arr3.append(contentsOf: 1...5 )//Type of expression is ambiguous without a type annotation
arr3.append(contentsOf: Array(1..<6) as [Any])
print(arr3)

//2. Creates a new collection by concatenating the elements of a sequence and a collection. or Collection and sequence or collection and collection :  only use + operator

// ---> Concatenating sequence with collection
var arr6 : [Any?] = [1,2,3,"Good",nil]
var arr5 = Array(-6 ..< -1) + arr6;
// ---> Concatenating collection with sequence
var arr7 = arr6 + Array(-6 ..< -1);
print(arr5)
print(arr7)
print(type(of: arr7))

// ---> Concatenating collection with collection
print(arr5 + arr7)
// to unwrap the value
var x = arr5 + arr7
var new_arr7 : [Any] = []
for e in x {                                                 /// Any Other way to unwrap ?? -- Doubt
    new_arr7.append(e ?? "No value exist");
}
print(new_arr7)

// use of +=
var arr8 : [Any] = [12,3.2,"Not",45,"swift"]
// with sequence
arr8 += Array(1..<3)
arr8 += [5.6,8,"rat"]
print(arr8)


//Finding Elements
//1. Returns a Boolean value indicating whether the sequence contains the given element.
// 1.1 Returns a Boolean value indicating whether the sequence contains an element that satisfies the given predicate.
var numNew : [Any?] = ["XYZ",98,"A+",61.5,"Indore"]
var numNew2 = [23,45,14,25,36]
var x1 = numNew2.contains(where: {
    e in return e > 40;
})
print(x1)

var x2 = numNew.contains(where: { e in
    if let num = e as? Int {
        print(num)
        return true;
    }
    return false;
})

print(x2)

//2. Returns a Boolean value indicating whether every element of a sequence satisfies a given predicate.
var p = numNew2.allSatisfy({e in e > 11}); // checking for all so not where
print(p)


//3. Returns the first element of the sequence that satisfies the given predicate.
var q = numNew2.first(where:{e in e>43}); // this method can return nil if not such element is exist then we need to handle this optionally
print(q) // optional(45)
if let q {
    print("First element that satisfy condition is ",q)
}
else{
    print("No element is found")
}

// 4. firstIndex(of:) Returns the first index where the specified value appears in the collection.
// This method can also return nil , so we need to handle it optionally

var fruits = ["Mango","Orange","Apple","Pinapple","Watermelon"]
//var val = fruits.firstIndex(of: "Pinapple");
var val = fruits.firstIndex(of: "Pinapple");
print(val)
if let e = val {
    fruits[e] = "PinApple-eated"
}
else{
    print("No such word exist !")
}
print(fruits)


// 5. firstIndex(where:)
// Returns the first index in which an element of the collection satisfies the given predicate.

var val2 = fruits.firstIndex(where: { e in e.count>8}) // {$0.count>8} also works
if let e = val2 {
    print("Yess")
}
else{
    print("No such word exist !")
}

//6. last(where:)
//Returns the last element of the sequence that satisfies the given predicate.
var numbers  = [3, 7, 4, -6, 9, -6, 10, 1]
if let lastNegative = numbers.last(where: { $0 < 0 }) { // This return element
    print("The last negative number is \(lastNegative).")
}

if let lastIdx = numbers.lastIndex(of: 10){ // return idx on finding elements from last
    numbers[lastIdx] = 12;
}
print(numbers)

if let lastIdx = numbers.lastIndex(where: {$0 > 9}){ // return idx on condition
    print("Index of element from last where particular condition meets \(lastIdx)")
}

if let lastIdx = numbers.lastIndex(of: -6 ){ // return idx on finding elements from last
    print("index of -6 is \(lastIdx)")
}

//7. min()
//Returns the minimum element in the sequence.
numbers  = [3, 7, 4, -2, 9, -6, 10, 1] //****** For type Any the min does'nt work

let minEle = numbers.min();
print(minEle ?? "Min int not exist")

print(fruits.min() ?? "Min Str. not exist")
// how min works for strings:: A string that starts with a smaller character (lower Unicode value) is considered "smaller."
// If the starting characters are the same, the comparison moves to the next character, and so on.
// uppercase letters are smaller than lowercase letters in Unicode.


/* min(by:)
sequence.min(by: { (element1, element2) -> Bool in
    // Return true if element1 should come before element2
}) */

var minBy = numbers.min(by: {$0 < $1})
print(minBy)

if let x = numbers.min(by: {$0 < $1}) {
    print("The Min element \(x)")
}

if let x = numbers.max() {
    print("the max ele is \(x)")
}

if let x = fruits.max() {
    print("Max from fruits are \(x)")
}

if let x = numbers.max(by: { a, b in                                               // Doubt
    print(a,b)
    return a > b;
}){
    print("Max element based on adjacent where a > b is  \(x)")
}



                                        /* Removing Elements */

var rmArray = [14,45,2,3,96,74,58,63,4,2,69,52,35];
// 1. Remove element at specific position at is index
var x11 = rmArray.remove(at: 3);
print(x11);

// 2. Remove and return first element from array
var x22 = rmArray.removeFirst();
print(x22)

// 3. Remove the specific no. of elements from the ""beginning""
var x33 = rmArray.removeFirst(2);
print(rmArray)


// 4. return and Remove last element from the collection
var x44 = rmArray.removeLast();
print(x44)

//5. remove specific no. of element from last
rmArray.removeLast(3)
print(rmArray)

//6. removes the elements in the specific range [1...5] or [1..<7]
rmArray.append(452); rmArray.append(102); rmArray.append(56); rmArray.append(83); rmArray.append(37);
print(rmArray)
rmArray.removeSubrange((4..<7))
print(rmArray)


// 7. remove all element
//rmArray.removeAll()

//8. remove some or all element based on certain condition
rmArray.removeAll(where: {e in e%2 == 0})
print(rmArray)

// 9. poplast - remove last element from array
rmArray.popLast();
print(rmArray)


var sArray = [96, 74, 58, 63, 4, 452, 102, 56, 83, 37];
sArray.sort();
print(sArray)
sArray.reverse();
print(sArray)
sArray.shuffle();
print(sArray)


















