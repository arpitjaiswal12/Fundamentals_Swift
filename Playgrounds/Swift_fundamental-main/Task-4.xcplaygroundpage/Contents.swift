//: [Previous](@previous)

import Foundation

protocol Repository {
    associatedtype K
    associatedtype V
    
    mutating func create(_ : (K,V))
    mutating func read(_ : K) -> V?
    mutating func update(_ : K , with : V) -> V?
    mutating func delete(_ : K) -> V?
}

extension abc {
    
}

extension Dictionary : Repository  {
    
    mutating func create(_ val : (Key , Value)) {
        self[val.0] = val.1
    }
    
    mutating func read(_ id : Key) -> Value?{
        guard let val = self[id] else {
            return nil
        }
        return val
    }
    
    mutating func update(_ id : Key , with val : Value) -> Value? { // The value that was updated, or nil if the key was not present in the dictionary.
        
        
        guard let oldVal = self[id] else {
            return nil
        }
        
        self[id] = val
        return oldVal
    }
    
    mutating func delete(_ id : Key) -> Value? {
        guard let rmValue = self[id] else{
            return nil
        }
        self.removeValue(forKey: id)
        return rmValue
    }
}

var d : [Int : String] = [:]
d.create((101, "Arpit" ))
d.create((102, "Ajay" ))
d.create((103, "Chirag" ))
d.create((104, "Ansh" ))

d.update(104, with: "Aryan")
d.read(103)

d.create((132,"Sham"))
print(d)
d.delete(132)
print(d)

protocol NewRepository {
    associatedtype V
    mutating func create(_ : V)
    mutating func read() -> [V]?
    mutating func update(_ : Int , with : V) -> V?
    mutating func delete(_ : Int) -> V? //return an element that has removed
}

var measurements: [Double] = [1.1, 1.5, 2.9, 1.2, 1.5, 1.3, 1.2]
let removed = measurements.remove(at: 2)
print(removed)

