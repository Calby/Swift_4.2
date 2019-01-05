// - - conditional statement

/*
 Swift provides two ways to add conditional branches to your code, so-called if statements and switch statements.
 */



// - - If

var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}
// prints "It's very cold. Consider wearing a scarf."

temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// prints "It's not that cold. Wear a t-shirt."

temperatureInFahrenheit = 72
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
}


// Code Challenge
// So if the remainder of n / 2 isn't 0 and the remainder of n / 7 is 0 then do put n into results...
var results: [Int] = []

for n in 1...100 {
    // Enter your code below
    if !(n % 2 == 0) && (n % 7 == 0){
        results.append(n)
    }
    // End code
}


