//****************** 09 January **************************

//today's topics to be covered : 1) how to make iterable mutable
//                               2) difference between 'self' and 'Self'
//                               3) Any
//                               4) collection types in detail
//                               5)closures - structure  and classes
//                               6)higher order function sort sorted and map

//MARK: Closures

//MARK: Syantax
//{ (params) -> return_type in
//   statements
//}

//let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//
//func backward(_ s1: String, _ s2: String) -> Bool {
//    return s1 > s2
//}
//var reversedNames = names.sorted(by: backward)

//closure
//var greet = {
//  print("Hello, World!")
//}


// closure that accepts one parameter
//let greetUser = { (name: String)  in
//    print("Hey there, \(name).")
//}
//
//// closure call
//greetUser("Delilah")
//
//
////some closure to return sqaure of a no.
//
//var res = { (number : Int) -> Int in
//    
//    return number * number
//    
//}
//
//print(res(5))
//
////closure as function parameter
//
//func grabLunch(search: () -> ()) {
//  print("hello")
//  // closure call
//  search()
//}
//
//grabLunch(search : {print("let's go'")})
//
//func display(_ :@autocl ()->()){
//    
//}
////autoclosure
//
//// using {}
//display(greet:{
//  print("Hello World!")
//}
//
//// without using {}
//display(greet: print("Hello World!"))

//***********************Any***************************
//var things: [Any] = []
//        
//        
//things.append(0)
//things.append(0.0)
//things.append(42)
//things.append(3.14159)
//things.append("hello")
//things.append((3.0, 5.0))
//things.append({ (name: String) -> String in "Hello, \(name)" })
//print(things)
//
//MARK: Enumerations
//enum CompassPoint : String {
//    case north = "east"
//    case south
//    case  east = "north"
//    case  west
//}
//
//var direction : CompassPoint = CompassPoint.north
//print(direction)
//switch direction {
//    
//case .north :
//    print("direction is north")
//    
//case CompassPoint.west :
//    print("direction is north")
//    
//case CompassPoint.east :
//    print("direction is north")
//    
//case CompassPoint.south :
//    print("direction is north")
//    
//}
//
//if direction == .north {
//    
//}


//
//caseiterable to have an idea of all the cases

//enum Beverage : CaseIterable{
//    case coffee, tea, juice
//}
//let numberOfChoices = Beverage.Type.self
//print(numberOfChoices)
//for i in Beverage.allCases{
//    print(i)
//}
//////print("\(numberOfChoices) beverages available")
////
////
//MARK: implicitly assigned raw values
////
//enum Planet : Int{
//    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
//}
////
//print(Planet.mercury.rawValue)


//MARK: raw values of strings
//
//enum CompassPoint: String {
//    case north, south, east, west
//}
//
//print(CompassPoint.north.rawValue)

//MARK: initializing from rawvalues
//

//let possiblePlanet = Planet(rawValue: 10)
//print(possiblePlanet)
//
//if let s = possiblePlanet {
//    print("possible planet is \(s)")
//} else {
//    print("there is no possible planet wiht this raw value")
//}

//let rawvalue = Planet.mercury.rawValue
//print(Planet.mercury.rawValue)
//
//var p : Any = possiblePlanet ?? "s"
//
//print(possiblePlanet ?? "s")
//
//

//------again assignning raw values------
// swift cannot infer not expressible data type
//enum ASCIIControlCharacter: Character {
//    case tab
//    case lineFeed
//    case carriageReturn
//}
//
//print(ASCIIControlCharacter.lineFeed.rawValue)


//MARK: example of why associated values are important in some cases

//enum APIResult {
//    case success(data: String)
//    case failure(_ errorCode: Int,_ message: String)
//}
//
//var succRes = APIResult.success(data : "successfull")
//
//var failRes = APIResult.failure(404,"not found")


//MARK: Note

/* enums cases are handled with switch cases
   enums cases can be handled by if-else conditional statements also but not enums who have associated value
 
 */




//switch succRes{
//    
//case .success:
//    print("success")
//
//case let .failure(n,str): 
//    print(n, str)
//}

//if succRes == {
//    
//}

////recursive enumeration
//
//enum ArithmeticExpression {
//    case number(Int)
//    indirect case addition(ArithmeticExpression, ArithmeticExpression)
//    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
//}

//MARK: example of recursive enums

//indirect enum Arithmetic{
//    case number(_ number : Int)
//    case addition(_ n1 : Arithmetic , _ n2 : Arithmetic)
//    case multiplication(_ n1 : Arithmetic, _ n2 : Arithmetic)
//    
//    func eval()->Int{
//        switch self{
//        case .number(var n1) :
//            return n1
//            
//        case .addition(var n1 ,var n2) :
//            return n1.eval() + n2.eval()
//            
//        case .multiplication(var n1 ,  var n2) :
//            return n1.eval() * n2.eval()
//        }
//    }
//}
//
//
//var number1  = Arithmetic.number(1)
//var number2  = Arithmetic.number(2)
//var number3 = Arithmetic.number(3)
//var add = Arithmetic.addition(number1,number2)
//var mult = Arithmetic.multiplication(add, number3)
//
//print(mult.eval())
//
//print(number1)

// MARK: Strutures and Classes

//struct Resolution {
//    var width = 0
//    var height = 0
//}
//class VideoMode {
//    var resolution = Resolution()
//    var interlaced = false
//    var frameRate = 0.0
//    var name: String?
//    var width = 0
//    var height = 0
//
//}
//
////structure has default initia;iizers for its member as memberwise initializers
//var res = Resolution(width : 100 , height : 100)

  //whereas classes do not have memberwise initializers
/*var ved = VideoMode(width : 100 , height : 100) */                //this will generate error


//*********identity operator****************
//struct ABC{
//    
//}
//
//class XYZ{
//    
//    
//}
//
//var A = ABC()
//var B = A
//
///*print(A===B)  */                //since this operator is used to equate reference and struct are value type thus this                               will generate error
//
//var X = XYZ()
//var Y = X
//
//print(X===Y)

