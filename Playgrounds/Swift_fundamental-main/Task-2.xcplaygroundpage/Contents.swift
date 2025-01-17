//: [Previous](@previous)

import Foundation

/*
 Design a custom model in Swift to represent an Employee with the following properties:
 
 Name: A string representing the name of the employee.
 Rating: A floating-point number that represents the performance rating of the employee.
 Subordinates: A collection of other employees directly reporting to the employee.
 
 The Employee model must calculate the rating dynamically as follows:
 If the employee has no subordinates, their rating remains as is.
 If the employee has subordinates, their rating is recalculated as the average of their subordinates' ratings.
 
 You are required to:

 Define the Employee model in Swift.
 
 Populate the model with dummy data to simulate a hierarchy of employees.
 
 Calculate and print the average rating of each employee, considering the above rules.

 Example Input
 Consider the following organizational hierarchy:
 Alice (Manager, initial rating: 5.0)
 Bob (Lead, initial rating: 4.0)
 Charlie (Engineer, initial rating: 3.5)
 Diana (Engineer, initial rating: 4.0)
 Eve (Engineer, initial rating: 4.5)

 Expected Output
 Charlie: Rating = 3.5 (no subordinates, retains their own rating)
 Diana: Rating = 4.0 (no subordinates, retains their own rating)
 Eve: Rating = 4.5 (no subordinates, retains their own rating)
 Bob: Rating = (3.5 + 4.0) / 2 = 3.75 (average of Charlie and Diana's ratings)
 Alice: Rating = (3.75 + 4.5) / 2 = 4.125 (average of Bob and Eve's ratings)

 
 */
class Employee {
    var name : String
    var rating : Float
    var subordinate : [Employee]
    
    
    init(name: String, rating: Float, subordinate: [Employee]) {
        self.name = name
        self.rating = rating
        self.subordinate = subordinate
    }
    
    var actualRating : Float {
        var result : Float = 0.0
        let cnt : Float = Float(self.subordinate.count)
        if !subordinate.isEmpty {
            subordinate.forEach { e in
                result += e.rating
            }
            // self.rating = result / cnt // if we need tyo modify rating
            return result / cnt
        }
        
        return rating
    }
}


var Charlie = Employee(name: "Charlie", rating: 3.5, subordinate: [])
var Diana = Employee(name: "Diana", rating: 4.0, subordinate: [])
var Eve = Employee(name: "Eve", rating: 4.5, subordinate: [])
var Bob = Employee(name: "Bob", rating: 4.0, subordinate: [Charlie, Diana])
var Alice = Employee(name: "Alice", rating: 5.0, subordinate: [Bob, Eve])

var empArray = [Alice, Bob, Eve]

// Get min rating among subordinate of an employee
empArray.forEach { e in
    if !e.subordinate.isEmpty {
        let x = e.subordinate.min { a, b in
            return a.rating < b.rating
        }
        if let ans = x?.rating {
            print("Min rating among \(e.name) suborinates are ",ans)
        }
    }
}


print(Bob.actualRating)

print(Alice.actualRating)

//Charlie.setUserRating()
//Charlie.rating







