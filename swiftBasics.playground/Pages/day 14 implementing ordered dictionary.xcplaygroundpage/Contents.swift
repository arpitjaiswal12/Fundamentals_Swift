//implementation of dictionary

//var dict : Dictionary = [1:"one", 2: "two",3: "three",4 : "four", 5:"five"]
//print(dict)

struct OrderedDictionary {
      var dictionary: [Int : Any] = [:]
      var keys: [Int] = []

    // Add or update a value
    mutating func set(value: Any, key: Int) {
        
        var keyPresence : Any? = dictionary[key]
        
        // if present already then modify its defined value with                                       new value
        if let Key = keyPresence{
            dictionary[key] = value

        } else {                                       //if key is not present then add that key wiht                                             value in dictionary as a new pair and append that                                          key in array as well
            dictionary[key] = value
            keys.append(key)
        }
    }
    
    // Function to update a value
    mutating func updateValue(key: Int, newValue: Any) {
        
         var existingValue = dictionary[key]
         if let value = existingValue {
             dictionary[key] = newValue               // it will update the value if the key exists
         } else {
             self.set(value: newValue, key: key)
         }
     }

    
    // Remove a value from a dictionary
    mutating func delete(key: Int) {
        
        var index = keys.firstIndex(of: key)
        
        if let index = index {
            keys.remove(at: index)
            dictionary[key] = nil
        } else{
            print("\(key) doesn't exist in the dictionary")
        }
    }

    // Print the dictionary
    func printDictionary(){
        if self.dictionary.isEmpty{
            print("dictionary is empty")
            return
        }
            
        for key in keys {
            var val : Any = dictionary[key]!
            print("\(key) : \(val)")
        }
    }
    
    // Get value for a key
    func getValue( key: Int)  {
        var val = self.dictionary[key]
        
            guard let value = val else {
            print("\(key) key doesn't exist in the dictionary")
            return
        }
        print(self.dictionary[key]!)
    }

    // Access keys in order
    func printKeys(){
        print(self.keys)
    }

    // Subscript for convenience
    subscript(key: Int) -> Any? {
        get {
            return dictionary[key]
        }
        set {
            if let value = newValue {
                set(value: value, key: key)
            } else {
                delete(key: key)
            }
        }
    }

    //Clear all entries
    mutating func deleteDictionary() {
        dictionary.removeAll()
        keys.removeAll()
    }
    
    //Property that tells the number of elements in the dictionary
    var count : Int {
        return keys.count
    }
    //Property to tell whether dictionary is empty or not
    var isEmpty : Bool {
        return self.count == 0
    }
}

var orderedDict = OrderedDictionary()

// Add key-value pairs
orderedDict.set(value: 10, key: 3)
orderedDict.set(value: 20, key: 2)
orderedDict.set(value: 30, key: 1)

//orderedDict.set(value: 40, key: 3)
//orderedDict.printDictionary()
//orderedDict.getValue(key: 4)
//orderedDict.printKeys()
orderedDict.printDictionary()
orderedDict.deleteDictionary()





//for each
//sorted
//map

orderedDict.printDictionary()
//print(orderedDict.count)
//print(orderedDict.isEmpty)
//orderedDict.updateValue(key: 1, newValue: 10)
//orderedDict.updateValue(key: 3, newValue: 30)
//orderedDict.printDictionary()
//orderedDict.updateValue(key: 4, newValue: 40)
//orderedDict.printDictionary()
