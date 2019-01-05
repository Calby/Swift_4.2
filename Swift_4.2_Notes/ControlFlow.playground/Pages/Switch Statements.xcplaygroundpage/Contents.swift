// - - Switch
/*
 A switch statement matches a value to multiple possible patterns. The appropriate code block is then executed based on the first successfully matched pattern.
 */

/*
 switch some value to consider {
 case value 1:
 respond to value 1
 case value 2,
 value 3:
 respond to value 2 or 3
 default:
 otherwise, do something else
 }
 */

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
// Prints "The last letter of the alphabet"

let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB", "LGW", "JFK", "ORY"]

// convention to name it the singular of the array you are iterating through
for airportCode in airportCodes {
    switch airportCode {
    case "LGA", "JFK": print("New York")
    case "LHR", "LGW": print("London")
    case "CDG", "ORY": print("Paris")
    case "HKG": print("Hong Kong")
    default: print("I don't know what city this airport is in")
    }
}

import GameKit

let randomTemperature = GKRandomSource.sharedRandom().nextInt(upperBound: 150)

switch randomTemperature {
case 0..<32: print("Weather is to cold do not go out!!")
case 32..<45: print("Its quite cold youll need a jacket")
case 45..<70: print("Its a bit cold, maybe swear a jumper")
case 70...100: print("It is hot wear a T-shirt")
default: print("Dont bother to go out")
}


// Code Challenge
func fizzBuzz(n: Int) -> String {
    // Enter your code between the two comment markers
    if n % 3 == 0 && n % 5 == 0 {
        return "FizzBuzz"
    }
        
    else if n % 3 == 0 {
        return "Fizz"
    }
        
    else if n % 5 == 0 {
        return "Buzz"
    }
    
    // End code
    return "\(n)"
}
// Code Challenge --------------


// Code Challenge
var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    // Enter your code below
    switch key {
    case "VNM", "IND":
        asianCapitals.append(value)
    case "BEL","LIE", "BGR":
        europeanCapitals.append(value)
        
    default:
        otherCapitals.append(value)
    // End code
}
    // print(asianCapitals, europeanCapitals, otherCapitals)
}
// Code Challenge --------------



// Code Challenge
// FizzBuzz Challenge
func fizzBuzz(n: Int) -> String {
    // Enter your code between the two comment markers
    if n % 3 == 0 && n % 5 == 0 {
        return "FizzBuzz"
    } else if n % 5 == 0 {
        return "Buzz"
    } else if n % 3 == 0 {
        return "Fizz"
    }
    // End code
    return "\(n)"
}

fizzBuzz(n: 2)
fizzBuzz(n: 10)
fizzBuzz(n: 7)
fizzBuzz(n: 21)
fizzBuzz(n: 48)
// Code Challenge --------------

