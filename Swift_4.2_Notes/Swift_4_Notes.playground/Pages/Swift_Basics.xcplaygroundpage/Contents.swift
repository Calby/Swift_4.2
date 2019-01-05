import UIKit

// == Basic content == //

// - - constants and variables
// - - Declare constants and variables

// let constant and var variable
//
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x =  0.0 , y =  0.0 , z =  0.0

// Declare multiple variables or constants, separated by commas

// - - type annotation
//
var welcomeMessage: String // name: type
welcomeMessage = "Hello"
var red, green, blue: Double


// - - Name constants and variables
//
let π = 3.14159
let hello =  "Hello World"
let 🐶🐮 =  "dogcow"
// constant variable name can not be used again, can not be saved other types, can not be interchanged
var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
// languageName = "Swift++"
// Note: constant values ​​cannot be changed

// - - Output constants and variables
//
print(friendlyWelcome)
print("The current value of friendlyWelcome is \(friendlyWelcome)")
    
    
// - - Comment
// one line

/*
Many lines
Comment
*/


// - - semicolon
//
let cat =  " 🐱 " ; print (cat) // requires a semicolon when writing multiple lines of code

// Code Challenge
//
let name = "James"
let greeting = "Hi there, \(name)"
let finalGreeting = "\(greeting)" + ". How are you?"


// Code Challenge
//
let firstValue = 2
let secondValue = 4
let product = firstValue * secondValue


// let output = "\(firstValue)" + " * " + "\(secondValue)" + " = " + "\(product)"
let output = "The product of " + "\(firstValue)" + " times " + "\(secondValue)" + " is " + "\(product)"


// - - Type safety and type inference
//
let meaningOfLife =  42         // will automatically infer the type of Int
let pi =  3.14189               // Inferred to Double (inference always chooses Double, not Float)
let anotherPi =  3  +  0.14159  // is inferred to be Double

// - - numeric literals
/*
 a decimal number with no prefix
 a binary number prefixed with 0b
 An octal number prefixed with 0o
 a hexadecimal number prefixed with 0x
 */

/*
 Integer digital amount
 */

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

/*
 Floating point numeric denomination, can be decimal or hexadecimal
 Decimal floating point literal denominator index e
 Hexadecimal floating-point literals must have an exponent p
 */

/*
 The decimal number and the exp index, the result is equal to the base multiplied by 10exp
 1.25e2 means 1.25 x 102, or 125.0
 1.25e-2 means 1.25 x 10-2, or 0.0125
 
 The hexadecimal number and the exp exponent, the result is equal to the base multiplied by 2exp
 0xFp2 means 15 x 22, or 60.0
 0xFp-2 means 15 x 2-2, or 3.75
 */

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion =  1_000_000.000_000_1  // Add extra 0 or underscore to increase readability

// == Numeric type conversion == //
// - - integer conversion
// let cannotBeNegative: UInt8 = -1 // error, UInt8 0~255
// let tooBig: Int8 = Int8.max + 1
let twoThousand: UInt16 = 2_000
let one :  UInt8  =  1   //The two types are different and cannot be added directly
let twoThousandAndOne = twoThousand + UInt16(one)


// - - integer and floating point conversion
let three = 3
let pointOneForOneFiveNine = 0.14159
let the_pi =  Double (three) + pointOneForOneFiveNine // Integer floating point conversion must explicitly specify the type
let integerPi =  Int (the_pi) // is truncated, equal to 3
// 3 + 0.14159 ok, because the literal itself has no type, but the variable has a type

// - - type alias
// (Define a new optional name typealias for an existing type)
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min


// - - Boolean
let orangesAreOrange = true
let turnipsAredelicious =  false   // assignment true/false will be inferred to be boolean

//: [Next](@next)
