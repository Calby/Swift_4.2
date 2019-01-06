//: [Previous](@previous)


//: > **Swift:** Classes


// Object Oriented Programming models information into data structures, or objects. We can add information to the containers as stored properties.
// Structures are a flexiable data type allowing you two group together related values and model them as a related unit.

struct Point { // Structs are blueprints, a data structure of stored properties. An Object. Structures create their own memberwise intiliser for you.
    let x: Int // define properties to store values
    let y: Int // ^^
    
    //init(x: Int, y: Int) { // initialiser method. Set up a object for use. CREATE FUNCTION. USED TO EXECUTE THE CODE
    
    //  self.x = x // self is used to refer to properties inside an object.
    //self.y = y
    //}
    
    /// Returns the surrounding points in range of
    /// the current one
    func points(inRange range:Int = 1) -> [Point] { // reffered to as a method, because it is asociated with a object (structure)
        var results: [Point] = []
        
        let lowerBoundOfXRange = x - range // reach 1 point to the left
        let upperBoundOfXRange = x + range // reach 1 point to the right
        
        let lowerBoundOfYRange = y - range // reach 1 point up
        let upperBoundOfYRange = y + range // reach one point down
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange { // loop through - 1 to + 1 for xrange
            
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange { // loop through for y range
                
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate) // constant doordinatePoint = Point structure with x and y initialiser.
                
                results.append(coordinatePoint) // place into point array
            }
        }
        
        return results
        
    }
    
}

let coordinatePoint = Point(x: 0, y: 0) // this creates an instance of the struct
coordinatePoint.points()  // () = perethasies [] = brackets {} = curly brace



class Enemy { // Classes require us to create an initiliaser manually. Classes are more efficient over time, but take longer to clean up memory.
    var life: Int = 2 // { used to declare a class with properties function. Like a piece of paper where everything is written.
    let position: Point // : to declare a type, int, string. Also used to declare what parameter a value should be.
    
    init(x: Int, y: Int) { // ( ) is used for functions/methods. Telling you what values to pass in.
        self.position = Point.init(x: x, y: y) // . is OOP, used to excute instructions against objects you also dont need to type init.
        
    }
    
    func decreaseLife(by factor: Int) {
        life -= factor
        
    }
}

// now referred to a sub class. Following DRY - don't repeat yourself.
class SuperEnemy: Enemy { // class inheritence. A class can inherit properties methods initialisers. Everything from inside { }
    
    let isSuper: Bool = true // assign value to new proprties in sub class
    
    override init(x: Int, y: Int) { // override inherited initialiser.
        
        super.init(x: x, y: y) // Use initialisers and pass in values from super class.
        self.life = 50 // assign life propertie in sub class.
    }
}

class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    func fire(at enemy: Enemy) {
        
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: 1)
            print("Gotcha")
        } else {
            print("Darn out of range")
        }
        
    }
    
    func isInRange (of enemy: Enemy) -> Bool { // Helper method
        let availablePositions =  position.points(inRange: range)
        
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                
                return true
                
            }
        }
        return false
    }
    
}

class LaserTower: Tower {
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
        
    }
    
    override func fire(at enemy: Enemy) {
        while enemy.life >= 0 {
            enemy.decreaseLife(by: strength)
        }
        print("Enemy Destroyed")
    }
    
}

let firstTower = Tower(x: 0, y: 0) // position tower on map
let firstenemy = Enemy(x: 1, y: 1) // position enemy on map
let superEnemy = SuperEnemy(x: 1, y: 1) // Class inheritence.
let laserTower = LaserTower(x: 2, y: 2)

laserTower.fire(at: superEnemy)


/*---------------------------------------------------------CODE CHALLENGE-----------------------------------------------------------*/
struct Person { // structures are cleaned faster but are less efficient over time. They should be small.
    
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
/*---------------------------------------------------------CODE CHALLENGE-----------------------------------------------------------*/
struct RGBColour { // Create structure
    let red: Double // create empty constants to pass into structure
    let green: Double
    let blue: Double
    let alpha: Double
    let description: String
    
    init(red: Double, green: Double, blue: Double, alpha: Double) { // initialise constants with arguments entered
        
        self.red = red // self red = let red. red = red: Double in parameters. Declaring them as the same variable or constant to be used within structure.
        self.green = green
        self.blue = blue
        self.alpha = alpha
        
        description = ("red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)") // initilise description constant string with values
        // description prevents you having to write out description manually from the outside. So init is needed. Create custom initializer.
    }
}

/*---------------------------------------------------------CODE CHALLENGE-----------------------------------------------------------*/

class Shape { // Create shape class
    var numberOfSides: Int // blue print a variable of sides into class
    
    init (numberOfsides: Int) { // initiliase variable number of sides to take argument numberofsides inside method
        self.numberOfSides = numberOfsides // local numberofsides = global numberofsides.
        
        
    }
    let someShape = Shape(numberOfsides: 8) // assign number of sides int value to shape class.
}


/*---------------------------------------------------------CODE CHALLENGE-----------------------------------------------------------*/

struct Location {
    let latitude: Double
    let longitude: Double
}

class Business {
    let name: String
    let location: Location
    
    init(name: String, lat: Double, lng: Double) {
        self.name = name
        self.location = Location(latitude: lat, longitude: lng)
    }
}

let someBusiness = Business(name: "Apple", lat: 2.343, lng: 11.34)


/*---------------------------------------------------------CODE CHALLENGE-----------------------------------------------------------*/

class Vehicle {
    
    var numberOfDoors: Int
    var numberOfWheels: Int
    
    init(withDoors doors: Int, andWheels wheels: Int) {
        
        self.numberOfDoors = doors
        self.numberOfWheels = wheels
        
    }
}


class Car: Vehicle { // Innherited class
    let numberOfSeats: Int = 4 // set empty constant
    
    override init(withDoors doors: Int, andWheels wheels: Int) { // call parent initialiser and over ride it.
        super.init(withDoors: doors, andWheels: wheels) // override parent intialiser to include below properties
    }
}

let someCar = Car(withDoors: 2, andWheels: 4) // initialise values and assign to constant.

/*---------------------------------------------------------CODE CHALLENGE-----------------------------------------------------------*/

class Persons { // super class
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
    
}

class Doctor: Persons { // inherited sub class
    
    override func fullName() -> String { // override fullName function to return the new value
        return "Dr. \(lastName)" // return following value
    }
}

let someDoctor = Doctor(firstName: "Sam", lastName: "Smith") // initialise Doctor class to constant
print("\(someDoctor.fullName())\n")  // call Doctor function returning name Dr. Smith.





// Freeing up memory is called garbage collection. A class, would be a map on overwatch. As soon as the match is over, the memory is freed up to load a new class.
// Garagbe collector can figure out faster when a structure is not being used compared to a class. Classes as more memory efficient over time.
// A bullet out of a gun will be a struct (they should be small), they are short lived and dont require a lot of memory. But there are so many of them they need to be garbage collected faster than a class. Garbage collector handle structs faster than classes.
// Garbage collectors are built into the language by the developers.





/*
 Value Vs Reference
 */

struct RealUser {
    var fullName: String
    var email: String
    var age: Int
}

var realUser = RealUser(fullName: "Thomas Dimnet", email: "thomas.dimnet@example.fr", age: 29)
var anotherUser = realUser

print(realUser.email)
print(anotherUser.email)

realUser.email = "td@example.com"

print(realUser.email)
print(anotherUser.email)


class RealPerson {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
        self.fullName = name
        self.email = email
        self.age = age
    }
}

var someRealPerson = RealPerson(name: "Tim Cook", email: "tim.cook@apple.com", age: 54)
var anotherRealPerson = someRealPerson

someRealPerson.email = "tcook@apple.com"

print(someRealPerson.email)
print(anotherRealPerson.email)


/*
 Challenge : Tag and Post
 */
struct Tag {
    let name: String
}

struct Post {
    let title: String
    let author: String
    let tag: Tag
    
    func description() -> String {
        return "\(title) by \(author). Filed under \(tag.name)"
    }
}

let firstPost: Post = Post(title: "My first post", author: "Thomas", tag: Tag(name: "presentation"))
let postDescription: String = firstPost.description()
print(postDescription)


/*
 Challenge : Tag and Post
 */

class OtherPoint {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

class Machine {
    var location: OtherPoint
    
    init() {
        self.location = OtherPoint(x: 0, y: 0)
    }
    
    func move(_ direction: String) {
        print("Do nothing! I am a machine!")
    }
}

class Robot: Machine {
    override func move(_ direction: String) {
        switch direction {
        case "Up":
            location.y += 1
        case "Down":
            location.y -= 1
        case "Left":
            location.x -= 1
        case "Right":
            location.x += 1
        default:
            break
        }
    }
}



//: [Next](@next)
