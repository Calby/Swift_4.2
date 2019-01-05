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
    / / brackets increase readability
    print("Welcome!")
} else {
    print("ACCESS DENIEDE")
