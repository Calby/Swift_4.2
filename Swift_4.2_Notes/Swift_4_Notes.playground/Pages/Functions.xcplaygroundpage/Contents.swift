//: [Previous](@previous)

//: > **Swift:** Functions

/*
 A function is a separate block of code that performs a specific task.
 */

// Imputs for the function below
let areaOfFirstRoom = area(lenght: 10, width: 12)
let areaOfSecondRoom = area(lenght: 15, width: 15)

func area(lenght: Int, width: Int) -> Int {
    
    let areaOfRoom = lenght * width
    
    return areaOfRoom
}

// Code Challenge
//
func greeting() {
    print("Hello")
}

//
//

func  greet ( person : String ) ->  String {
    Let greeting =  " Hello, "  + person +  " ! "
    Return greeting
}

print ( greet ( person : " Anna " ))
print ( greet ( person : " Brian " ))




// Code Challenge
//

func temperatureInFahrenheit(temperature: Double) -> Double {
    let fahrenheit = (temperature * 9 / 5 + 32)
    return fahrenheit
}
let fahrenheitTemp = temperatureInFahrenheit(temperature: 24.0)


/*
 note
 The first actual argument to the function print(_:separator:terminator:) has no label, and its other actual arguments are optional because they all have default values. The changes to the syntax of these functions are discussed in the section on actual parameter labels and formal parameter names and the default form parameter values ​​in the lower function.
 */

// Argument labels
//
func remove(havingValue value :String) {
    print(value)
}
remove(havingValue: "A")


// func somefunction() -> Void {}
// Argument labels : Example
//
func  greetAgain ( Person : String ) ->  String {
    Return  " Hello again, "  + person +  " ! "
}
print ( greetAgain ( person : " Anna " ))

// Argument labels : Example
//
func getRemainder(value a: Int, divisor b: Int) -> Int {
    return a % b
    
}
let result = getRemainder(value: 10, divisor: 3)

// Code Challenge







//: [Next](@next)
