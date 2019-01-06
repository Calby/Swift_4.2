//: [Previous](@previous)

enum Coin: Double {
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.1
    case quarter = 0.25
}

let wallet: [Coin] = [Coin.penny, Coin.nickel, Coin.dime, Coin.dime, Coin.quarter, Coin.quarter, Coin.quarter, Coin.dime, Coin.nickel, Coin.penny, Coin.penny, Coin.dime, Coin.quarter, Coin.nickel]

var count: Int = 0
for coin in wallet {
    switch coin {
    case Coin.quarter:
        count += 1
    default:
        continue
    }
}

// Below: this method does the same as the method above
count = 0
for case Coin.quarter in wallet {
    count += 1
}

for coin in wallet {
    if case .nickel = coin { // -> if case .nickel equals what the coin is right now, do something
        print("Not some much money")
    } else if case .dime = coin {
        print("Better than nothing")
    }
}

let someOptional: Int? = 42

if case .some(let x) = someOptional {
    print(x)
}


// Nil Coalescing Operator
let firstName: String? = "Thomas"
let username: String = "tdimnet"

// We should use a ternary operator and using const instead
//var displayName: String
//
//if let name = firstName {
//    displayName = name
//} else {
//    displayName = username
//}
// let displayName: String = firstName != nil ? firstName! : username -> ok but bad practice since we are using "firstname!"
// This is the better method to do this kind of verification
let displayName: String = firstName ?? username

print(displayName)


//: [Next](@next)
