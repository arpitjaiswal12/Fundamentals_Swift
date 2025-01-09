// *** Array ***

// * Insertion *
//var arr1 = [1,2,3,4,5]
////arr1.insert(contentsOf: (100...110) , at: 2)
//arr1.insert(contentsOf: Array(stride(from:10, to: 20, by:2)), at:2)
//// Because stride returns stride object but contentsOf expects a value of type Array and therefore conversion initializer of array-type is required
//print(arr1)


// * Removal / Replace *
//var arr2 = [4,5,6,7,8]
//arr2.removeSubrange(2...4)
//var arrCount = arr2.count
//print(arrCount)
//arr2.replaceSubrange(1..<arr2.endIndex, with: repeatElement(1,count: arrCount))
//print(arr2)


// * Shorthand *
//var arr3 = [1,2,3,4,5]
//arr3.removeAll(where: { $0 % 2 == 0 })
//print(arr3)


// * Capacity *
//var arr4: [Int] = []
//arr4.reserveCapacity(100)
//for i in 0..<100 {
//    arr4.append(i)
//}
//print(arr4)


// * Contains and satisfy *
//var arr5 = [4,3,2,6,7,8]
//print(arr5.contains { $0 > 1 })
//// True even if a single condition is met
//print(arr5.allSatisfy { $0 > 2})
//// True only when all conditions are met


// * Occurences *
var arr6 = [1,2,3,4,5,6,7]
print(arr6.first(where: { $0 > 9})! , arr6.firstIndex(where: { $0 > 3})!)
print(arr6.last(where: { $0 > 3})! , arr6.lastIndex(where: { $0 > 3})!)


// * Prefix / Suffix *
//var arr7 = [3,2,4,1,5,6]
//print(arr7.prefix(3)) // Elements
//print(arr7.prefix(upTo: 3)) // Index
//print(arr7.prefix(through: 3))
//print()
//print(arr7.suffix(3))
//print(arr7.suffix(from: 10))


var xyz: Set<Int> = []
xyz.insert(5)
xyz.insert(3)
xyz.insert(1)
print(xyz)
var abc = xyz.sorted(by: >)
print(abc)



// ** Higher-Order Functions **

// * Map / FlatMap *
//var arr8 = [1,2,3,4,5]
//print(arr8.map { $0 * 2 } )
//print(arr8.map { Array(repeating: $0, count: $0)} )
//print(arr8.flatMap { Array(repeating: $0, count: $0)} )


// * Compact Map *
//var arrTemp = [1,2,3,nil,4,5]
//var arrTemp2 = arrTemp.compactMap({ $0 })
//print(arrTemp2)


// * Reduce *
//var arr9 = [1,2,3,4,5]
//print(arr9.reduce( 0, {
//    $0 + $1
//}))

//var str1 = "abcddcbaxyz"
//print(str1.reduce(into: [:]) { dict, key in
//    dict[key, default: 0] += 1
//})


// * Filter *
//var arr16 = [1,2,3,4,5,6,7,8]
//var arr17 = arr16.filter { $0 > 3 }
//print(arr17)




// * Sort / Sorted *
//var arr11 = [4,3,5,6,2,4,1,5]
//arr11.sort()
//print(arr11)
//arr11.sort(by: {$0 > $1})
//print(arr11)
//var arr12 = [4,3,5,6,2,4,1,5]
//var arr13 = arr12.sorted(by: {$0 < $1})
//print(arr12)
//print(arr13)



// * Partition *
//var arr14 = [1,2,3,4,5,6,7,8]
//var index1 = arr14.partition { $0 < 3 }
//print(arr14)
//print(index1)



// * swapAt / index offset *
//var arr15 = [1,2,3,4,5,6,7,8]
//arr15.swapAt(1,arr15.index(before: arr15.endIndex))
//print(arr15)

//var index2 = arr15.startIndex
//arr15.formIndex(&index2, offsetBy: 5)   // Mutating
//print(index2)

//var index3 = arr15.index(arr15.startIndex, offsetBy:3)
//print(index3)




// *** String Exercise ***

//func update (_ str: String, _ pos: Int) -> String {
//    var str2 = str
//    var idx = str.index(str.startIndex, offsetBy: pos-1)
//    var chr = str[idx]
//    str2.remove(at: idx)
//
//    var curr = str2.endIndex
//    var str3: String = ""
//
//    while curr != str2.startIndex {
//        var ind = str2.index(before: curr)
//        str3.append(str2[ind])
//        curr = ind
//    }
//
//    str3.insert(chr, at: str3.startIndex)
//    return str3
//}
//
//var ans = update("Hello",2)
//print(ans)

// Note: Characters in a string can be randomly accessed only through variables of type String.index, normal integers can't randomly access characters




// *** Dictionary ***

// * Dictionary initialzation using array *
//var arr1 = ["a","b","c","d","e"]
//var dict1 = Dictionary(uniqueKeysWithValues: zip(arr1, (1...5)))
//print(dict1)


// * grouping *
//var arr2 = [1,2,3,4,5,6,7,8]
//var dict2 = Dictionary(grouping: arr2, by: { $0 < 3 })
//print(dict2)


// * Iteration *
//var dict3 = ["A":1, "B":2, "C":3]
//for (key,value) in dict3 {
//    print(key, value)
//}
//dict3.forEach { pair in
//    print(pair)
//}


// * Indexing (sort of) *

//var dict4 = ["A":1, "B":2, "C":4, "D":4, "E":5]
//var index1 = dict4.index(forKey: "B")
//print(type(of:index1))
//
//print(dict4)
//print(dict4[dict4.startIndex])
//print(dict4[index1!].key, dict4[index1!].value)
//print(dict4.keys)
//print(dict4.values)


// * Update / Removal *

//var dict5 = ["A":1, "B":2, "C":4, "D":4, "E":5]
//print(dict5)
//dict5["A"]=6
//print(dict5)
//dict5.updateValue(7, forKey: "B")
//print(dict5)
//dict5.removeValue(forKey: "B")
//print(dict5)


// * Merging *

//var dict6 = ["A":99, "B":7, "C":4]
//dict6.merge(dict5) { (current, _ ) in current }
//print(dict6)
//dict6.merge(dict5) { (new, _) in new }
//print(dict6)

// Everthing after 'in' is the body of the closure.



// ** Higher-Order functions **

// * Map / FlatMap

//var dict7 = ["A":1, "B":2, "C":4, "D":4, "E":5]
//var dict8 = dict7.map { [$0.key: $0.value * 2] }
//var dict9 = dict7.flatMap { [$0.key: $0.value * 2] }
//print(dict7, type(of: dict7),"\n")
//print(dict8, type(of: dict8),"\n")
//print(dict9, type(of: dict9),"\n")



// *** Any ***

//var arr: [Any] = [1,2,3,"XYZ",false]
//print(arr, type(of: arr))

//var t1 = Int("123")
//var t2 = Int("123.45")
//print(t1,t2)
//var t3 = Int("123")!
//print(t3)
//
//var i1 = 123
//print(String(i1))

