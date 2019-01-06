//: [Previous](@previous)

//: > **Swift:** Functions

/*
 A function is a separate block of code that performs a specific task.
 */

// Imputs for the function below


func area(length: Int, width: Int) -> Int {
    
    let areaOfRoom = length * width
    
    return areaOfRoom
}

let areaOfFirstRoom = area(length: 10, width: 12)
let areaOfSecondRoom = area(length: 15, width: 15)

// Code Challenge
//
func greeting() {
    print("Hello")
}

//
//

func  greet ( person : String ) ->  String {
    let greeting =  " Hello, "  + person +  " ! "
    return greeting
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
func  greetAgain ( person : String ) ->  String {
    return  "Hello again,"  + person +  "!"
}
print ( greetAgain ( person : "Anna" ))



// Argument labels : Code Challenge
//
func getRemainder(value a: Int, divisor b: Int) -> Int {
    return a % b
    
}
let result = getRemainder(value: 10, divisor: 3)



// default values
//
func carpetCostHaving(length: Int, width: Int, carpetColour colour: String = "tan") -> (price: Int, carpetColour: String) { // Returning more than one value from a function
    
    // Grey carpet is £1/sq ft
    // Tan carpet is £2/sq ft
    // Deep blue carpet is £4/sq ft
    
    let areaOfRoom = area(length: length, width: width)
    // call second function area, pass through arguments from function carpetCostHaving
    
    var price = 0
    
    switch colour {
    case "grey": price = areaOfRoom * 1
    case "tan": price = areaOfRoom * 2
    case "blue": price = areaOfRoom * 4
    default: price = 0
    }
    return (price, colour)
    
}

let resultOne = carpetCostHaving(length: 10, width: 20)

resultOne.price
resultOne.carpetColour


// Code Challenge
func coordinates (for location: String) -> (Double, Double) {
    
    let eifelTower: (Double, Double) = (48.8582, 2.2945)
    let greatPyramid: (Double, Double) = (29.9792, 31.1344)
    let sydneyOperaHouse: (Double, Double) = (33.8587, 151.2140)
    
    switch location {
    case "Eiffel Tower": return eifelTower
    case "Great Pyramid": return greatPyramid
    case "Sydney Opera House": return sydneyOperaHouse
        
    default: return (0,0)
    }
    
}



//: [Next](@next)
