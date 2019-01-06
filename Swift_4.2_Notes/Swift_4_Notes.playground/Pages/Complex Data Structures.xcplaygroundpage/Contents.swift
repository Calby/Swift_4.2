//: [Previous](@previous)

//: > **Swift:** Complex Data Structures

// Object Oriented Programming models information into data structures, or objects. We can add information to the containers as stored properties.
// Structures are a flexiable data type allowing you two group together related values and model them as a related unit.

let x1 = 0
let y1 = 0 // These two data points must be related.
let coodrinate1: (x: Int, y: Int) = (0,0) // tuple, to return two values
coodrinate1.x

/*--CODE CHALLENGE-----------------------------------------------------------*/
struct User{
    let name: String
    let age: Int
}

struct Point { // Structs are blueprints, a data structure of stored properties. An Object.
    let x: Int // define properties to store values
    let y: Int // ^^
    
    init(x: Int, y: Int) { // initialiser method. Set up a object for use.
        
        self.x = x // self is used to refer to properties inside an object.
        self.y = y
        
        
    }
    
    /// Returns the surrounding points in range of
    /// the current one
    func points(inRange range: Int = 1) -> [Point] { // reffered to as a method, because it is asociated with a object (structure)
        var results: [Point] = []
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                
                results.append(coordinatePoint)
            }
        }
        
        return results
        
    }
    
}

let coordinatePoint = Point(x: 0, y: 0) // this creates an instance of the struct

coordinatePoint.x
coordinatePoint.points()


/*--CODE CHALLENGE-----------------------------------------------------------*/

struct Person {
    
    let firstName: String
    let lastName: String
    
    func fullName () -> String {
        var result: String = ""
        result = ("\(firstName ) \(lastName)")
        
        return result
    }
}

let aPerson = Person(firstName: "Jax", lastName: "Morgans")
let myFullName = aPerson.fullName()

/*--CODE CHALLENGE-----------------------------------------------------------*/

struct RGBColour { // Create structure
    let red: Double // create constants to pass into structure
    let green: Double
    let blue: Double
    let alpha: Double
    let description: String
    
    init(red: Double, green: Double, blue: Double, alpha: Double) { // initialise constants with values?
        
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
        
        description = ("red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)") // initilise description constant string with values
        
        
    }
}


//: [Next](@next)
