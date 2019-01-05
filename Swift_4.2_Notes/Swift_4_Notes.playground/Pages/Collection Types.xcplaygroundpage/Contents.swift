//: [Previous](@previous)

//: > **Swift:** Arrays

// A collection is a data structure that can hold multiple values. In this video, we're going to introduce the first collection type - Array. We'll look at array creation as well as structure.

/*
 The complete Array<Element> Element is the type of value that the array is allowed to store.
 Shorthand [Element]
 It is more recommended to be abbreviated and the book will use shorthand when it comes to array types.
 */

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

// - - array
/*
 The complete Array<Element> Element is the type of value that the array is allowed to store.
 Shorthand [Element]
 It is more recommended to be abbreviated and the book will use shorthand when it comes to array types.
 */


// - - create an empty array
var someInts = [ Int ]()
print ( " someInts is of type [Int] with \( someInts.count ) items. " )

someInts.append ( 3 )

someInts = []
// someInts is now an empty array, but is still of type [Int]


// - - Create an array with default values
/*
 Swift's Array type provides an initializer to create an array of sized and elements that are set to the same default value.
 */

var threeDouble =  Array ( repeating : 0.0 , count : 3 )
// [0.0, 0.0, 0.0]


// - - Create an array by concatenating two arrays
var anotherThreeDouble =  Array ( repeating : 2.5 , count : 3 )

var sixDouble = threeDouble + anotherThreeDouble



// - - Create an array using array literals
/*
 [value1, value2, value3]
 */

var shoppingList : [ String ] = [ " Eggs " , " Milk " ]

/*
 note
 The array shoppingList is declared as a variable (using the var prompt) instead of a constant (using the let prompt) because more elements are added to the array in the chestnut below.
 */

var shoppingList2 = [ " Eggs " , " Milk " ]   // Automatic type inference


// - - Access and modify arrays
// .count
print ( " The shopping list contains \( shoppingList.count )   items. " )

// .isEmpty
if shoppingList.isEmpty {
    print ( " The shopping is empty. " )
} else {
    print ( " The shopping is not empty. " )
}

// apend(_:)
shoppingList.append ( " Flour " )

// +=
shoppingList += [ " Baking Powder " ]
shoppingList += [ " Chocolate Spread " , " Cheese " , " Butter " ]

// subscript
var firstItem = shoppingList[ 0 ]

/*
 note
 The index of the first element in the array is 0, not 1. The array in Swift is zero-based.
 */

shoppingList[ 0 ] =   " Six eggs "

shoppingList[ 4 ... 6 ] = [ " Bananas " , " Apples " ] // Replace three values ​​with two values
/*
 note
 You cannot use the subscript script syntax to append a new element to the end of the array.
 */

shoppingList.insert ( " Maple Syrup " , at : 0 )

let mapleSyrup = shoppingList.remove ( at : 0 )

/*
 note
 If you access or modify a value that exceeds the index of the array boundary, you will get a runtime error. You can check the array's count property before using the index. Unless count is 0 (that is, the array is empty), the largest legal index is always count - 1, because the index of the array starts from zero.
 */

firstItem = shoppingList[ 0 ]

let apples = shoppingList.removeLast () // remove the last element


// - - Traverse an array
for item in shoppingList {
    print (item)
}

for (index, value) in shoppingList.enumerated () {
    print ( " Item \( index +  1 ) : \( value ) " )
}





// = = combined == //
/*
 The collection stores the same type and non-repeating values ​​out of order in a collection.
 When the order of the elements is less important, you can use the collection instead of the array, or you need to make sure that the elements don't repeat.
 
 note
 Swift's Set type is bridged to the NSSet class of the underlying framework.
 For more information on using Set with the base framework and Cocoa, see Using Swift (Swift 3) with Cocoa and Objective-C.
 */



// - - a hash of type Set
/*
 In order for a type to be stored in a collection, it must be hashable—that is, the type must provide a way to calculate its own hash value.
 The hash value is the Int value and all objects that are equal in comparison are the same, such as a == b, which follows a.hashValue == b.hashValue.
 
 All of Swift's underlying types (such as String, Int, Double, and Bool) are hashable by default and can be used for collection or dictionary keys.
 Enumer member values ​​that have no associated value (as described in the enumeration) are also hashable by default.
 */

/*
 note
 
 You can use your own custom type as the value type of the collection or the key type of the dictionary, as long as they follow the Hashable protocol of the Swift base library. Types that follow the Hashable protocol must provide an accessible Int attribute called hashValue. The values ​​returned by the hashValue property do not need to be the same in different executions of the same program or in different programs.
 
 Because the Hashable protocol follows Equatable, the type that follows must be an implementation of the "equal" operator ( ==). The Equatable protocol requires any implementation that follows == to have an equivalence relationship. That is, the implementation of == must satisfy the following three conditions, where a, b, and c are arbitrary values:
 
 a == a (reflexive)
 a == b means b == a (symmetry)
 a == b && b == c means a == c (transitive)
 For more information on compliance with the agreement, see the agreement.
 
 */



// - - Collection type syntax
/*
 The collection type of Swift is written as Set<Element>, where Element is the type to be stored in the collection.
 Different from arrays, collections have no equivalent shorthand.
 */



// - - Create and initialize an empty collection
var letters =  Set < Character > ()
print ( " letters is of type Set<Character> with \( letters.count ) items " )

/*
 note
 The type of the letters variable is inferred to be Set<Character>, based on the type of the initializer.
 */

// In addition, if the content already provides type information, such as actual arguments to functions or variable constants that have been categorized, you can create an empty collection with an empty array literal:
letters.insert ( "a" )
letters = []



// - - Create a collection using array literals
var favoriteGenres :  Set < String >  = [ " Rock " , " Classical " , " Hip hop " ]

/*
 note
 The collection of favoriteGenres is used as a variable (marked with var) instead of a constant (marked with let) because the element is added and removed from the chestnut below.
 */

var favoriteGenres2 :  Set  = [ " Rock " , " Classical " , " Hip hop " ] // Automatic type inference


// - - Access and modify collections
// count
print ( " I have \( favoriteGenres.count ) favorite misic genres. " )

// isEmpty
if favoriteGenres.isEmpty {
    print ( " As far as music goes, I'm not picky. " )
} else {
    print ( " I have particular music preferences. " )
}

// insert(_:)
favoriteGenres.insert ( " Jazz " )

// remove(_:) removeAll()
if  let removedGrenre = favoriteGenres.remove ( " Rock " ) {
    print ( " \( removedGrenre ) ? I'm over it. " )
} else {
    print ( " I never much cared for that. " )
}

// contains(_:)
if favoriteGenres.contains ( " Funk " ) {
    print ( " I get up on the good foot. " )
} else {
    print ( " It's TOO Funky in here Wallpaper. " )
}



// - - Traverse collection
for genre in favoriteGenres {
    print ( " \( genre ) " )
}

// Swift's Set type is unordered. To iterate over the values ​​of a collection in a specific order, use the sorted() method, which returns the elements of the collection as an array sorted using the < operator.
for genre in favoriteGenres.sorted () {
    print (genre)
}



// - - Perform a collection operation
/*
 You can efficiently perform basic collection operations, such as merging two collections, determining which values ​​are shared by the two collections, or determining whether the two collections contain all, some, or none of the same values.
 */



// - - Basic collection operation
/*
 Use the intersection(_:) method to create a new collection that contains only two collection common values;
 Use the symmetricDifference(_:) method to create a new collection that contains only the non-shared values ​​that each of the two collections has;
 Use the union(_:) method to create a new collection containing all the values ​​of the two collections;
 Use the subtracting(_:) method to create a new collection of two collections that does not contain a collection value.
 */

let oddDigits :  Set  = [ 1 , 3 , 5 , 7 , 9 ]
let evenDigits :  Set  = [ 0 , 2 , 4 , 6 , 8 ]
let singleDigitPrimeNumbers :  Set  = [ 2 , 3 , 5 , 7 ]

oddDigits.union (evenDigits).sorted ()
oddDigits.intersection (evenDigits).sorted ()
oddDigits.subtracting (singleDigitPrimeNumbers).sorted ()
oddDigits.symmetricDifference (singleDigitPrimeNumbers).sorted ()



// - - Collection membership and equality
/*
 Use the "equal" operator ( == ) to determine if two collections contain the same value;
 Use the isSubset(of:) method to determine that all values ​​of a collection are included by a collection;
 Use the isSuperset(of:) method to determine if a collection contains all the values ​​of a collection;
 Use the isStrictSubset(of:) or isStrictSuperset(of:) methods to determine whether a collection is a subset or superset of a collection, but not equal;
 Use the isDisjoint(with:) method to determine if two collections have completely different values.
 */

let houseAnimals:  Set  = [ " ? ? " , " ? " ]
let farmAnimals:  Set  = [ " ? " , " ? " , " ? " , " ? " , " ? " ]
let cityAnimals:  Set  = [ " ? ? " , " ? " ]

houseAnimals.isSubset ( of : farmAnimals)
// true
farmAnimals.isSuperset ( of : houseAnimals)
// true
farmAnimals.isDisjoint ( with : cityAnimals)
// true

//: > **Swift:** Dictionaries

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


// Same Code
dict.updateValue("yetAnotherValue", forKey: 3)
dict[3] = "yetAnotherValue"

print(dict)


/*
 A dictionary stores an unordered collection of mutually identical keys of the same type and values ​​of the same type.
 Unlike elements in an array, the elements in the dictionary have no specific order.
 */

/*
 note
 Swift's Dictionary bridges to the NSDictionary class of the underlying framework.
 For more information on using Dictionary with the base framework and Cocoa, see Using Swift (Swift 3) with Cocoa and Objective-C (official link).
 */



// - - Dictionary type shorthand syntax
/*
 Write all: Dictionary<Key, Value>
 Shorthand: [Key: Value]
 note
 The Key type of the dictionary must follow the Hashable protocol, just like the value type of the collection.
 */



// - - Create an empty dictionary
var namesOfIntegers = [ Int :  String ]() // Initializer syntax creation
namesOfIntegers[ 16 ] =  " sixteen "
namesOfIntegers = [ : ]   // again becomes an empty dictionary, the previous content has provided the key type information in the dictionary


// - - Create a dictionary with dictionary literals
var airports : [ String :  String ] = [ " YYZ " :  " Toronto Pearson " , " DUB " :  " Dublin " ]

var aiports2 = [ " YYZ " :  " Toronto Pearson " , " DUB " :  " Dublin " ] // can infer the type


// - - Access and modify the dictionary
// count
print ( " The deposit dictionary contains \( airports.count ) items. " )

// isEmpty
if airports.isEmpty {
    print ( " The alkyl dictionary is empty. " )
} else {
    print ( " The online dictionary is not empty. " )
}

// Subscript added
airports["LHR"] = "London"

// Subscript modification
airports["LHR"] = "London Heathrow"

/*
 updateValue(_:forKey:) method to set or update the value of the feature key
 The updateValue(_:forKey:) method sets a value when the key has no value, or updates the key when it already exists.
 Unlike the subscript script, the updateValue(_:forKey:) method returns the old value after performing the update.
 The updateValue(_:forKey:) method returns an optional value of the dictionary value type.
 */

if   let oldValue = airports.updateValue ( " Dublin Airport " , forKey : " DUB " ) {
    print ( " The old value for DUB was \( oldValue ) " )
}

if  let airportName = airports[ " DUB " ] {
    print ( " The name of the airports is \( airportName ) " )
} else {
    print ( " That airport is not in the alkyl dictionary. " )
}

airports[ " APL " ] =  " Apple International "
airports[ " APL " ] =  nil  // remove a key-value pair by assigning nil
/*
 Use removeValue(forKey:) to remove key-value pairs from the dictionary
 This method removes the key-value pairs if they exist and returns the removed value, or nil if the value does not exist.
 */
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue)。")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}



// - - Traversing the dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

// let airportCodes = [String](airports.keys)

let airportNames = [String](airports.values)

// Swift's Dictionary type is unordered. To traverse the keys or values ​​of a dictionary in a specific order, use the sorted() method of the key or value.




//: [Next](@next)
