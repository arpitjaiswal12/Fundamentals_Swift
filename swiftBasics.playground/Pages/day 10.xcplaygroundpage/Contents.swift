//MARK: Closure

//closures are nothing but like unnamed function whihc can pass around
func greet(_ callback: (String) -> String) -> String {
    // Call the function passed as an argument
    return callback("Hello!")
}

func sayHello(message: String) -> String {
    return "\(message) How are you?"
}

print(greet(sayHello)) // Output: Hello! How are you?
print(sayHello(message: "hey"))
