import Foundation

// MARK: Let us create an dictionary having rollNo. : Name of students
var dic : [Int : String] = [101:"Aman",115:"Bhavya",108 : "Aryan" ,111:"Anirudh"]
dic[112] = "Akshat jain"
print(dic[101])
print(dic)
print("**********/")
dic.forEach { k,v in
    
}

var dic2 = dic.sorted(by: < )
print(type(of: dic2))
print(dic2)
var a = [1,2,3]
var b = ["a","b","c"]
var d = b.remove(at: 2)
print(type(of: d))
print(b)

var c = zip(a,b)
print(c)
print(type(of: c))

var x = [1,2,3,4,5]
var p = x.contains {$0 == 5}

x.firstIndex(of: 3)


x.count


var pair : (Int , String);
type(of: pair)

// MARK: Implementation of ordered dictionary
// MARK: Methods which are Implemented - insert, getAllPairs (print ordered dictionary), index (get value by key), isEmpty, count, removeValue, updateValue
// MARK: Methods Ongoing : Sorted, filter, forEach, map

class orderDictionary{

    private var keyArray : [Int]
    private var valueArray : [String]
    private var userDictionary : [Int : String] = [:]
    
    init(keys keyNums :[Int] = [] , values valueNums : [String] = []) {
        self.keyArray = keyNums
        self.valueArray = valueNums
        userDictionary.merge(zip(keyArray,valueArray)){(curr,new) in curr}
    }
    
    //MARK: insert value in key
    
    func insert(_ key : Int , _ value : String){
        keyArray.append(key)
        valueArray.append(value)
        userDictionary[key] = value
    }
    
    //MARK: get all pairs
    func getAllPairs(){
        var length = keyArray.count
        var i = 0
        if length == 0 {
            print("Dictionary is Empty ")
            return
        }
        
        while i < length {
            print("[\(keyArray[i]) : \(valueArray[i])]")
            i += 1
        }
    }
    
    //MARK: Get value by key
    func index( _ keyValue : Int) -> String {
        guard let result = userDictionary[keyValue] else{
            return "No such pair exist"
        }
        return result
        
    }
    
    //MARK: Check Dictionary empty or not
    
    var isEmpty : Bool {
        var length = keyArray.count
        if length != 0 {
            return false
        }
        return true
    }
    
    
    //MARK: Count elements in dictionary
    var count : Int {
        return keyArray.count
    }
    
    func filter(value : String) -> [Int : String]{
        var result = userDictionary.filter({$0.value == value})
        return result
        
    }
    
    func removeValue(_ key : Int){
        
        if let idx = keyArray.firstIndex(of: key){
            keyArray.remove(at: idx)
            valueArray.remove(at: idx)
        }
        
        guard let value  = userDictionary.removeValue(forKey: key) else {
            print("value not found for key \(key)")
            return
        }
        print("\(key) : \(value) is removed ")
    }
    
    func sorted() -> Array<(key: Int, value: String)> {
        var result = userDictionary.sorted(by: < )
       
        return result
        
    }
    
    func callFunction(body : (_ x : Int , _ y : Int) -> Void){
        userDictionary.forEach(<#T##body: ((key: Int, value: String)) throws -> Void##((key: Int, value: String)) throws -> Void#>)
    }
    
    func updateValue(_ val:String, _ forKey : Int){
        guard let idx = keyArray.firstIndex(of: forKey) else{
            return
        }
        valueArray[idx] = val;
        print("The value is replaced of key \(forKey) with value \(val)")
    }
    
    
    

}
    

var dictionary = orderDictionary();
dictionary.insert(101, "A")
dictionary.insert(110, "T")
dictionary.insert(103, "M")
dictionary.insert(105, "P")
dictionary.insert(106, "B")
dictionary.insert(109, "C")
dictionary.count
dictionary.isEmpty
dictionary.getAllPairs()
dictionary.index(103)
dictionary.removeValue(110)




