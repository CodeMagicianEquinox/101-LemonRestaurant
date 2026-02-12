import UIKit

// -- Variables and constants ---
// variables - var
// constants - let

var greeting = "Hello, playground"

var restaurantName = "Little Lemon Restaurant"
print("Welcome to \(restaurantName)")

restaurantName = "Little lemon bistro"
print ("Welcome to the renew \(restaurantName)")

// constants cannot change
//let city = "Chicago"

//print("Our \(restaurantName) is located in \(city)")

// String
//var specialDish = "Pasta"

//Integer
//var availableTables = 5

// Double
//var dishPrice = 10.50

//Boolean
//var isOpen = true

//print("Today's special: \(specialDish)) - $\(dishPrice)") // print a sentence where you use 2 variables

//Mini Challenge 1:
// Create a variable called `numberOfTables` and a constant called `ownerName`.
// Print a sentence like:
// “Little Lemon has 10 tables, owned by Mario.”

//var numberOfTables = 10

//let ownerName = "Mario"

//print("Little Lemon has \(numberOfTables) tables, owned by \(ownerName)")

//Mini Challenge 2:
//Create one variable of each type that describes something about a restaurant
//print a short description using them all in one sentence.
//Example:
//Little Lemon is open: true, has 20 tables, and our soup costs $4.99.

var isOpen = true // boolean variable
var availableTables = 20 // int variable
var specialDish = "soup" // string variable (text)
var dishPrice = 4.99 // Double variable

print("Little Lemon is open: \(isOpen), has \(availableTables) tables, and our \(specialDish) costs \(dishPrice).")

var coffeeType = "Chai Latte"
var chaiPrice = 3.5
var chaiQty = 3
var isHot = false


var pastaPrice = 10.50
var saladPrice = 6.25
var subtotal = pastaPrice + saladPrice
var taxes = subtotal * 0.08
var total = subtotal + taxes


//calculate subtotal
//calc taxes
//calc total
