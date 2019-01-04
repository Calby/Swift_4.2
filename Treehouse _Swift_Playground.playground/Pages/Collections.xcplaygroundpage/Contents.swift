//: Arrays
// A collection is a data structure that can hold multiple values. In this video, we're going to introduce the first collection type - Array. We'll look at array creation as well as structure.

// array of numbers
var numbers = [1,2,3,4,5]

// array of strings
var todo: [String] =
    [
    "Finish collections course",
    "Buy groceries",
    "Respond to emails"
    ]
// add valuse to end of  array
todo.append("Pick up dry cleaning")

// Conatinating two arrays
[1,2,3,4,5] + [6]

// todo = todo += ["Order book online"]
todo += ["Order book online"]

let secondTaskList = ["Mow the lawn"]

// Reading From Arrays
let firstTask = todo[0]
let thridTask = todo[2]

todo[4] = "Brush teeth"

// Inserting using Indexes
todo.insert("Pay bills", at: 2)

// Removing Items
// todo.removeAtIndex(3)

todo.count

// Dealing with non-existent data
// let lastItem = todo[5]

//
// Code Challange
//
var arrayOfInts = [1,2,3,4,5,6]
arrayOfInts.append(7)
arrayOfInts += [8]
let value = arrayOfInts[4]
let discardedValue = arrayOfInts.remove(at: 5)


//: Dictionaries

/*
 Airport Code        Airport Name
 (Key)               (Value)
 
 LGA                 La Guardia
 LHR                 Heathrow
 CDG                 Charles De Gaulle
 HKG                 Hong Kong International
 DXB                 Dubai International
 */

var airportCodes: [String: String] =
    [
    "LGA": "La Guardia",
    "LHR": "Heathrow",
    "CDG": "Charles De Gaulle",
    "HKG": "Hong Kong International",
    "DXB": "Dubai International"
    ]

// Read from a dictionary
airportCodes["LGA"]

// Inserting Key Value Pairs
airportCodes["SYD"] = "Sydney Airport"

airportCodes["LGA"] = "La Guardia International Airport"

airportCodes.updateValue("Dublin Airport", forKey: "DUB")

// Removing Key Value Pairs
// airportCodes["DXB"] = nil
// airportCodes.removeValueForKey("DUB")

// Dealing with non-existent data
let airportName = airportCodes["LGA"]

let orlandoAirport = airportCodes["MCO"]

//
// Code Challange
//
var iceCream: [String: String] = [
    "CC": "Chocolate Chip",
    "AP": "Apple Pie",
    "PB": "Peanut Butter"]

iceCream.updateValue("Rocky Road", forKey: "RR")

let applePie = iceCream["AP"]

iceCream["CC"] = "Chocolate Chip Cookie Dough"


var dict = [1: "someValue", 2: "anotherValue"]


// SAme Code 
dict.updateValue("yetAnotherValue", forKey: 3)
dict[3] = "yetAnotherValue"

print(dict)
