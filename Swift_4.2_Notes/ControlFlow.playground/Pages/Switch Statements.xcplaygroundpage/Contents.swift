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

var randomTemperature = Int(arc4random_uniform(UInt32(150)))

switch randomTemperature {
case 0..<32: print("Forget it, stay inside")
case 32...45: print("Wear a jacket")
case 45..<70: print("A little chilly")
case 70...100: print("It is hot out")
default: print("It is really hot dude")
}
