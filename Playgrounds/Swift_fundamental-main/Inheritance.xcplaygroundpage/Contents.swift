//Inheritance with method overriding

class Animal {
    var name : String
    
    init (name: String){
        self.name = name;
    }
    
    func makeSound(){
        	print("\(name) make sound!!")
    }
}

class Dog : Animal {
    var breed : String ;
    
    init (name:String, breed : String){
        self.breed=breed;
        super.init(name:name); // This will call the initializer of base class
    }
    
    // Overriding an make sound function
    override func makeSound(){
        print("\(name) make sound !")
    }
}

let dog = Dog(name: "Tommy", breed:"Golden Retriever");

print(dog.name);
dog.makeSound();




// Inheritence with properity overriding

class Vehicle {
    
    var speed : Int;
    
    init(speed: Int) {
        self.speed = speed
    }
    
    var speedInKmh : Int {
        
        return speed;
        
    }
    
    var speedInMph: Int {
        get {
            return speed / 2  // Convert km/h to mph
        }
        set {
            speed = newValue * 2  // Convert mph to km/h
        }
    }
    
}

class Car : Vehicle {
    var fuelEfficiency: Double
    
    init (speed:Int , fuelEfficiency:Double){
        self.fuelEfficiency=fuelEfficiency;
        super.init(speed:speed);
    }
    
    // overriding the properties
    
    override var speedInKmh : Int{
        return super.speedInKmh;
    }
    
    override var speedInMph : Int{
        get{
            return super.speedInMph;
        }
        
        set{
            print("87->" ,newValue)
            if newValue > 100 {
                print("Speed cannot exceed 100 mph")
            }
            else{
                super.speedInMph =  newValue;
            }
        }
    }
}


let myCar = Car(speed: 50, fuelEfficiency: 12.69);

print("Speed in kmh \(myCar.speedInMph)");
myCar.speedInMph=80;
print("Speed in Mph \(myCar.speedInMph)");

//Optional channing

class Person {
    var residence : Residence?
}

class Residence{
    var numberOfRooms = 1;
}

let jon = Person()
jon.residence = Residence();
print(jon.residence?.numberOfRooms);


//print("Enter Your name : ")
//var name = readLine();
//print(name)


// Hollow pattern printing

var i : Int = 5;
var j : Int = 5;

var x = 0;
var y = 0;
while x < i {
    while y < j{
        if x == 0 || y == 0 || x == i-1 || y == j-1 {
            print("*" , terminator: "")
        }
        else{
            print(" " , terminator: ""); // The terminator: "" argument in the print statements ensures the output is printed on the same line rather than starting a new line each time.
        }
        y += 1;
    }
    print();
    y = 0;
    x += 1;
}

// Handling with multi-dimensional dictionary
var data : [String : [String : Any ]] = [
    "Aman" : ["age" : 21 , "marks" : 85, "address": "Indore"] ,
    "Ajay" : ["age" : 20 , "marks" : 76, "address": "ujjain"],
    "Anurag" : ["age" : 22 , "marks" : 85, "address": "Bhopal"],
    "Akshat" : ["age" : 18 , "marks" : 93, "address": "GWl"]
]

for (name, val) in data{
    print("Student name : ", name ,"\nDetails");
    for (p1,p2) in val{
        print( p1 , " : ",p2);
    }
    print()
}

let num = [7,2,1,5,3,8]
let nums = num.map{$0 * 2};
print(nums)

let nums2 = num.filter{
    $0 % 2 == 0
};


print(nums2)

print(8 % 2)
