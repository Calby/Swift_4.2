


var todo: [String] = ["Finish Collections Course", "Buy Groceries", "Respond to emails", "Pick up Dry Cleaning", "Order books online", "Mow the lawn"]

let item = todo[0]

for task in todo{
    print(task)
}

// Ranges
//Closed Range Operator
// a...b creates a range of values of everything between those two values.
//Half Open Range Operator
// 1..<5 Everything between 1 and one less than 5
for number in 1...10{
    print("\(number) times 5 is equal to \(number)")
}

//
// Code Challenge
//

// Enter your code below
var results: [Int] = []
for multiplier in 1...10
{
    results.append(multiplier * 6)
}


// While Loop
var x = 0

while x <= 20 {
    print(x)
    x += 1
}

var index = 0

while index < todo.count {
    print(todo[index])
    index += 1
}

/*
 Repeat While Loop
 repeat {
 statements
 } while condition
 */

var counter = 1

while counter < 1 {
    print("I'm inside the while loop")
    counter += 1
}

//this will give an error
repeat {
    print("I'm inside the while loop!")
    counter += 1
} while counter < 1


//
// Code Challenge
//

let numbers = [2,8,1,16,4,3,9]
var sum = 0
var counter1 = 0

// Enter your code below

while counter1 < numbers.count
{
    sum = sum + numbers[counter1]; counter1 += 1
}

// If Statement
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
