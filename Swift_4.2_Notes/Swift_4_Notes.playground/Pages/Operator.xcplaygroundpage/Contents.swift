//: [Previous](@previous)
// **** basic operator **** //

// - - Special terms
/*
 Operators include unary, binary, and ternary:
 The unary operator operates on a target (such as -a ). The unary prefix operator is added directly before the target (such as !b ), and the unary suffix operator is added directly at the end of the target (such as c! ).
 The binary operator operates on two targets (such as 2 + 3) and because it appears between two targets, it is an infix.
 The ternary operator operates on three targets. Like C, the Swift language has only one ternary operator, the ternary conditional operator ( a ? b : c ).
 
 The value affected by the operator is called the operand. In expression 1 + 2, the + symbol is a binary operator, where the two values ​​1 and 2 are the operands.
 */



// - - assignment operator
let b =  10
var a =  5
a = b       // the value of a is now 10 The assignment operator can initialize or update the value of a to b
let (x, y) = ( 1 , 2 ) //The right side is a tuple whose elements will be split into constants or variables at once
// x is equal to 1 and y is equal to 2
// if x = y {
//     // is not legal, the assignment symbol itself will not reciprocate, different from Objective-C and C
// }


// - - Arithmetic operator
/*
 Plus ( + )
 Less( - )
 Multiply ( * )
 Except ( / )
 
 Unlike the arithmetic operators in C and Objective-C, Swift arithmetic operators do not allow value overflow by default.
 You can choose to use Swift's overflow operators (such as a & + b ) to exercise overflow behavior
 
 The addition operator also supports String concatenation:
 "hello, " + "world" // equals "hello, world"
 */



// - - remainder operator
/*
 The remainder operator ( a % b ) can find out how many b's multiples can just fit into a and return the rest of the value (which we call the remainder).
 
 note:
 The remainder operator (%) is also called a modulo operator in other languages. In short, strictly speaking, this behavior corresponds to the operation of negative numbers in Swift, so the remainder is more suitable than the simulation.
 
 When b is negative, its sign is ignored. This means that a % b and a % -b can get the same answer.
 
 */



// - - Unary minus operator
/*
 The sign of the numeric value can be switched with the prefix – we call it the unary minus operator
 The unary minus operator ( - ) is placed directly before the value to be manipulated without any spaces.
 */

let three = 3
let minusThreee = -three
let plusThree = -minusThreee



// - - Unary plus operator
/*
 The unary plus operator ( + ) returns the value of its operation directly without any modification
 
 Although the unary plus operator actually does nothing, you can still use it for positive numbers to make your code more symmetrical for the unary minus operator.
 */

let minusSix = -6
let alsoMinusSix = +minusSix



// - - Combined assignment symbol
var a2 =  1
a2 +=  2      // a2 is now equal to 3
/*
 note
 
 The combination operator does not return any value. For example, you can't write something like let b = a += 2 . This is different from the behavior of the increment and decrement symbols mentioned earlier.
 */


//  Code Challenge
var initialScore = 8
initialScore += 1
let isWinner = initialScore != 10

let x0 = 100 / 5 + 5
let y0 = 25 - 5 * 2 + 5
let remainder = 15 % 7
let a0 = (2 + 2) * 2 + 2
let z0 = 5 + 5 - 5 * 2

!(!true)
let gameOver = !false

var levelScore = 100
var totalScore = -levelScore

// - - comparison operator
/*
 Swift supports all C standard comparison operators:
 Equal ( a == b )
 Not equal ( a != b )
 Greater than ( a > b )
 Less than ( a < b )
 Greater than or equal to ( a >= b )
 Less than or equal to ( a <= b )
 
 note:
 Swift also provides two equivalent operators ( === and !== ), which you can use to determine if two objects have the same reference. Learn more by referring to the Class and Structure chapters.
 
 Each comparison operator returns a Bool value to indicate whether the statement is true
 
 */

1  ==  1
2  !=  1
2  >  1
1  <  2
1  >=  1
2  <=  1
    
// comparison operators are usually used in conditional statements
let name =  " world "
if name ==  " world " {
    print ( " hello, world " )
} else {
    print ( " I'm sorry \( name ) , but I don't recognize you " )
}

/*
 You can compare tuples with the same number of values ​​as long as each value in the tuple is comparable
 Bool cannot be compared, which means that tuples containing Boolean values ​​cannot be used to compare sizes
 
 note:
 The tuple comparison operators included in the Swift standard library only support tuples of less than seven elements. To compare tuples with seven or more elements, you must implement the comparison operators yourself.
 */
( 1 , " zebra " ) < ( 2 , " apple " )
( 3 , " apple " ) < ( 3 , " bird " )
( 4 , " dog " ) == ( 4 , " dog " )



// - - ternary conditional operator
/*
 Question ? answer1 : answer2
 */

// if question {
//     answer1
// } else {
//     anser2
// }
let contentHeigt =  40
let hasHeadr =  true
let rowHeight = contentHeigt + (hasHeadr ?  50  :  20 )



// - - Merge null operator
/*
 The merge null operator ( a ?? b ) expands if option a has a value, or nil if there is no value, returns the default value b
 Expression a must be an optional type
 The expression b must be the same as the storage type of a
 */

let my: String? = "aaa"
let you: String = "bbb"
my != nil ? my! : you  // my ?? you is equivalent to the abbreviation of this line of code
/*
 note
 If the value of a is non-null, the value of b will not be considered. This is called short circuit calculation.
 */

let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName




// - - Interval operator - -
// - - Closed interval operator a...b
for index in  1 ... 5 {
    print ( " \( index ) times 5 is \( index *  5 ) " )
}



// - - Half open interval operator a..<b
let names = [ " Anna " , " Alex " , " Brian " , " Jack " ]
let count = names.count
for i in  0 ..< count {
    print ( " Person \( i +  1 ) is called \( names[i] ) " )
}



// - - One-sided interval [a...] [...a] [..<a]
for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

for name in names[..<2] {
    print(name)
}

let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1)
range.contains(-99)




//   - - logical operator - -
/*
 Logical NOT ( !a )
 Logic and ( a && b )
 Logical OR ( a || b )
 */


// - - logical non-operator!a
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}


// - - logical AND operator a&&b
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}


// Logical or operator a||b
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}


// - - Mixed logic operation
if  enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

/*
 The logical operators && and || in the Swift language are left-related, which means that the expression of multiple logical operator combinations will first calculate the leftmost subexpression.
 */



// - - Explicit parentheses
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    // brackets increase readability
    print("Welcome!")
} else {
    print("ACCESS DENIEDE")
}

//: [Next](@next)
