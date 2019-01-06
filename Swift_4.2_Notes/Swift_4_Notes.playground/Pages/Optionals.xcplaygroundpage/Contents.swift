//: [Previous](@previous)

struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func fullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        } else {
            // return firstName + " " + middleName! + " " + lastName -> never force unwrapping like middleName!
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me: Person = Person(firstName: "Thomas", middleName: nil, lastName: "Dimnet")
me.fullName()

// Optional binding using if let
let airportCodes = ["CDG": "Charles de Gaulle"]
let newYorkAirport = airportCodes["JFK"]

if let newYorkAirtport = airportCodes["JFK"] {
    print(newYorkAirtport)
} else {
    print("Whoops! That key does not exist!")
}

let weatherDictionary: [String: [String: String]] = [
    "currently": ["temperature": "23.3"],
    "daily": ["temperature": "23.3"],
    "weekly": ["temperature": "23.3"]
]

// Bad practice
//if let dailyWeather = weatherDictionary["daily"] {
//    if let highTemp = dailyWeather["temperature"] {
//        print(highTemp)
//    }
//}
// Good practice
if let dailyWeather = weatherDictionary["daily"], let highTemperature = dailyWeather["temperature"] {
    print(highTemperature)
}

// Downsides to Using If Let
struct Friend {
    let name: String
    let age: String
    let address: String?
    
    // Failable initializer
    //    init?(dictionary: [String: String]) {
    //        return nil
    //    }
}

func new(friendDictionnary: [String: String]) -> Friend? {
    if let name = friendDictionnary["name"], let age = friendDictionnary["age"] {
        let address = friendDictionnary["address"]
        return Friend(name: name, age: age, address: address)
    } else {
        return nil
    }
}

// Early Exit
func newFriend(friendDictionnary: [String: String]) -> Friend? {
    guard let name = friendDictionnary["name"], let age = friendDictionnary["age"] else {
        return nil
    }
    
    let address = friendDictionnary["address"]
    
    return Friend(name: name, age: age, address: address)
}

// Challenge

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
}

class Residence {
    var numberOfRooms: Int = 1
    var address: Address?
}

class Person {
    var residence: Residence?
}

let susan = Person()

let address = Address()
address.street = "1234 Something Drive"
address.buildingName = "Building"
address.buildingNumber = "12"

let residence = Residence()
residence.address = address

susan.residence = residence

// Below: this method is too long and we have to do multiple check in order to convert a simple number
if let home = susan.residence, let postalAddress = home.address, let buildingNumber = postalAddress.buildingNumber, let convertedNumber = Int(buildingNumber) {
    print(convertedNumber)
}

// Below: this method is more short and is more readable -> Optional chaining in action
if let buildingNumber = susan.residence?.address?.buildingNumber {
    print(buildingNumber)
}


// Challenges

// 1.
/*
 Declare a variable named someValue of type optional Int and assign nil.
 Note: You will have to explicitly declare the type as an optional Int otherwise the compiler cannot infer it.
 */
var someValue: Int? = nil



// 2.
/*
 In the editor, you have a pretty complex dictionary representing a movie. It contains a nested dictionary, which itself contains an array of Strings as a value.
 Your job is to assign the string containing the value for the lead actor (which for the sake of the example is at position 0 in the array) to the variable leadActor.
 Since dictionaries return optional values, you will have to use an if let statement to unwrap each consecutive operation.
 */
let movieDictionary = ["Spectre": ["cast": ["Daniel Craig", "Christoph Waltz", "Léa Seydoux", "Ralph Fiennes", "Monica Bellucci", "Naomie Harris"]]]

var leadActor: String = ""

// Enter code below
if let movie = movieDictionary["Spectre"], let movieCast = movie["cast"] {
    leadActor = movieCast[0]
}



// 3.
/*
 In the editor, you have a struct named Book which has few stored properties, two of which are optional.
 Your task is to create a failable initializer that accepts a dictionary of type [String : String] as input and initializes all the stored properties. (Hint: A failable init method is one that can return nil and is written as init?).
 Use the following keys to retrieve values from the dictionary: "title", "author", "price", "pubDate"
 Note: Give your initializer argument the name dict
 */
struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String: String]) {
        guard let myTitle = dict["title"], let myAuthor = dict["author"] else { return nil }
        self.price = dict["price"]
        self.pubDate = dict["pubDate"]
        self.title = myTitle
        self.author = myAuthor
    }
}






//: [Next](@next)
