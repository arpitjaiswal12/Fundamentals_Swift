// Dealing with some more concept
struct Student {
    var name : String;
    let age : Int;
}

// var std = student (name: "Jon", age: 21)
// std.name = "Jone"
//std.age = 23 // age itself is a constent
// print(std.name)
let std = Student (name: "Jon", age: 21)
//std.name = "Jon";
print(std.name) // error - > why -> std object is constant and valued typed cannot allow you to even modify the variable values

/* but in class you can modify the constant objects or instances -> why -> in class instances reference cannot be change but instance or object value can even change beacuse instances are mutable but their reference is immutable.*/
class Student2{
    var name : String = "Default"
    let age : Int = 0;
    
    init(name: String) {
        self.name = name
        
    }
}

let std2 = Student2(name: "Arpit");
// std2.age=23// Now let age cannot bhe change
print(std2.name)
print(std2.age)

