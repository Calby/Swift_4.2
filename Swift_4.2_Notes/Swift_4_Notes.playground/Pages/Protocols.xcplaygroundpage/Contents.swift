//: [Previous](@previous)

// A protocol only describes an implementation
protocol FullNameable {
    var fullName: String { get }
}


//struct User: FullNameable {
//    var fullName: String
//}
//
//let user = User(fullName: "John Smith")
struct Friend: FullNameable {
    let firstName: String
    let middleName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Thomas", middleName: "Stephane", lastName: "Dimnet")
friend.fullName


// Bad example using struct and class -> not ideal for all use cases
import Foundation

enum EmployeeType {
    case manager
    case traditional
}

protocol Payable {
    func pay() -> Paycheck
}

struct Paycheck {
    let base: Double
    let benefits: Double
    let deductions: Double
    let vacation: Double
}

class Employee {
    let name: String
    let address: String
    let startDate: Date
    let type: EmployeeType
    
    init(name: String, address: String, startDate: Date, type: EmployeeType) {
        self.name = name
        self.address = address
        self.startDate = startDate
        self.type = type
    }
}

class HourlyEmployee: Employee, Payable {
    var hourlyWage: Double = 15.00
    var hoursWorked: Double = 0.0
    let vacation: Double = 0.0
    
    func pay() -> Paycheck {
        let base = hoursWorked * hourlyWage
        return Paycheck(base: base, benefits: 0, deductions: 0, vacation: 0)
    }
}

class SalariedEmployee: Employee, Payable {
    var salary: Double = 50000.00
    var benefits: Double = 1000.00
    var deductions: Double = 0.0
    var vacation: Double = 2.0
    
    func pay() -> Paycheck {
        let montly = salary / 12
        return Paycheck(base: montly, benefits: benefits, deductions: deductions, vacation: vacation)
    }
}

func pay(employee: Payable) {
    employee.pay()
}

let employee: SalariedEmployee = SalariedEmployee(name: "Thomas", address: "someAddress", startDate: Date(), type: EmployeeType.traditional)
let anotherEmployee: HourlyEmployee = HourlyEmployee(name: "Marc", address: "someAddress", startDate: Date(), type: EmployeeType.traditional)
employee.pay()
anotherEmployee.pay()


// Loosely Related Types
protocol Blendable {
    func blend()
}

class Fruit: Blendable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func blend() {
        print("I'm mush!")
    }
}

class Dairy {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Cheese: Dairy {}

class Milk: Dairy, Blendable {
    func blend() {
        print("I haven't change at all! I'm still milk")
    }
}

func makeSmoothie(with ingredients: [Blendable]) {
    for ingredient in ingredients {
        ingredient.blend()
    }
}

let strawberry: Fruit = Fruit(name: "Strawberry")
let cheddar: Cheese = Cheese(name: "Cheddar")
let chocolateMilk: Milk = Milk(name: "Chocolate")

let ingredients: [Blendable] = [strawberry, chocolateMilk] // -> if I use cheddar, it would raise an error since it is now a Blendable type
makeSmoothie(with: ingredients)

// Random Number Generator
protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
        return lastRandom/m
    }
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
d6.roll()


// Protocol Inheritance
protocol Printable {
    func description() -> String
}

protocol PrettyPrintable: Printable {
    func prettyDescription() -> String
}

struct User: PrettyPrintable, Equatable {
    let name: String
    let age: Int
    let address: String
    
    func description() -> String {
        return "\(name), \(age), \(address)"
    }
    
    func prettyDescription() -> String {
        return "name: \(name)\nage: \(age)\naddress: \(address)"
    }
    
    static func ==(lhs: User, rhs: User) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age && lhs.address == rhs.address
    }
}

let user = User(name: "Thomas", age: 29, address: "someAddress")
print(user.prettyDescription())

let anotherUser = User(name: "Thomas", age: 29, address: "someAddress")

user == anotherUser





// 1.
/*
 Declare a protocol named User. The protocol defines two requirements: a gettable property named name of type String, and a gettable/settable property named age of type Int
 Hint: To declare a property as gettable, add { get } after the type. For settable - { set } and combine both to get a gettable and settable property.
 */

protocol User1 {
    var name: String { get }
    var age: Int { get set }
}



// 2.
/*
 In the editor the protocol you created, User, is provided along with an empty struct. For this task, Person needs to conform to User.
 After you've written code to achieve this task, create an instance of Person and assign it to a constant named somePerson.
 */

struct Person: User1 {
    var name: String
    var age: Int
}

let somePerson: Person = Person(name: "Thomas", age: 29)



// 3.
/*
 In the editor below, I've declared a class, WifiLamp, that represents an interface to one of those Internet of Things lamps. The class models state that determines whether the lamp is on or off and a color, represented by the Color enum.
 For the first step, declare a protocol named ColorSwitchable. The protocol has a single requirement: a method named switchColor that takes a value of Color as an argument. For the sake of this challenge, make sure your external argument label is omitted by using an underscore. Give the argument a local name of color.
 */
protocol ColorSwitchable {
    func switchColor(_ color: Color)
}

enum LightState {
    case on, off
}

enum Color {
    case rgb(Double, Double, Double, Double)
    case hsb(Double, Double, Double, Double)
}

class WifiLamp: ColorSwitchable {
    let state: LightState
    var color: Color
    
    init() {
        self.state = .on
        self.color = .rgb(0,0,0,0)
    }
    
    func switchColor(_ color: Color) {
        self.color = color
    }
}



// 4.1
/*
 In the editor, I've provided a simple protocol to represent an animal.
 For the first task, create a protocol named Pet which should inherit from Animal and require an additional gettable stored property, cuddlyName, of type String.
 */
protocol Animal {
    var numberOfLegs: Int { get }
}

protocol Pet: Animal {
    var cuddlyName: String { get }
}

// 4.2
/*
 For the next step, create a struct named Dog that conforms to Pet.
 */
struct Dog: Pet {
    var numberOfLegs: Int
    var cuddlyName: String
}

let dog = Dog(numberOfLegs: 4, cuddlyName: "Pouli")







//: [Next](@next)
