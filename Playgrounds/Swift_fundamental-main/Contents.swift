var greeting = "Hello, playground"

print(greeting)

// Type Casting

/* let x=23;
var y="Hello " + String(x);
print(y) */

/* Arrays-
genearlly in swift arrays are homogeneous - store single type value*/
var arr=["Apple", "Mango","Orange"];
print(arr);
arr.append("Pinapple")
print(arr)


//Creating an Array by Adding Two Arrays Together

var ThreeDoubles = Array(repeating: 2.5, count: 3)
print(ThreeDoubles[1])

var shoppingList: [String] = ["Eggs", "Milk"]
for item in shoppingList {
    print(item)
}


let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

// declaring an array
var array1 : [String] = [];
array1.append("Hello")
array1.append("Arpit");

// iterating an array
//1. for in loop

for ele in array1 {
    print (ele + " ")
}

//2. while loop
var cnt = array1.count;
print(cnt)
while cnt > 0 {
    print(array1[cnt-1]);
    cnt-=1;
    
}

cnt=array1.count;
//3. Repeat while loop
repeat {
    print(array1[cnt-1]);
    cnt-=1;
} while cnt>0;


//Creating Dictionary:
var dic0 : [String : Int] = [:];
var dic : [String:Any] = [:];
dic["Name"]="Jon";
dic["Marks"]=95
dic["Grade"]="A+"
dic["sem"]="VIII"

print(dic)

// Iterating an dictionary
for (D_key,D_value) in dic {
    print("\(D_key) -> \(D_value)")
}

//Functions
/*function syntax - >

fun Name(identifierName : type ) -> returnType {
    
}*/

// calulating min max element from array
var num = [12,5,32,9,15];

func minmax(array : [Int])->(Int,Int){
    var min_value=num[0];
    var max_value=num[0];
    
    for e in num {
        if(e<min_value){
            min_value=e;
        }
        else if(e>max_value){
            max_value=e;
        }
    }
    return (min_value,max_value);
}

var (min_value,max_value) = minmax(array: num);

print("min_value \(min_value ) + max_value \(max_value)");

//void function

func greet(){
    print("Good Morning !");
    return
}

greet()

func anotherGreeting(ajay name: String) -> String {
    return "Hello, " + name + "!"
}

print(anotherGreeting(ajay: "arpit jaiswal"))

// Closures

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

// Here the makeIncrementer function will return the function

print(incrementByTen());
print(makeIncrementer(forIncrement: 10)());



