import UIKit

// functions

/*
Syntax
 
 func functionName(parameter1: Type, parameter2: Type) -> ReturnType {
 
    //logic goes here
 
    return value
 }
 
*/

// Example 1 - 1 parameter
// specify function, call the function, execute the function

func greet(person: String) -> String {
    let greetings = "Hello " + person + "!"
    return greetings
}

let message = greet(person: "Prof. Samantha")
print(message)

// Example 2 - 2 parameter
func add(number1: Int, number2: Int) -> Int{
    return number1 + number2
}

let result = add(number1: 255, number2: 664)
print("The sum of 255 + 664 = \(result)")


//Example 3 with unnamed parameters
func multiply(_ x: Int,_ y:Int) -> Int {
    return x * y
}

print(multiply(3,5))

// Example 4
func deliveryTime(min: Int) -> String{
    return "Ready in \(min) minutes"
}

let calculation = deliveryTime(min: 26)
print(calculation)

/* MiniChallenge
 1.  Define a function called welcomeStudent.
 2.  The function should take one parameter: name of type String.
 3.  The function should return a String.
 4.  Inside the function, build a message like: "Welcome, [name]! Ready to learn Swift?".
 5.  Call the function with a sample name and print the result.
*/

func welcomeStudent(name: String) -> String{
    return "Welcome \(name)! Ready to learn Swift"
}

print(welcomeStudent(name: "Ted"))


//Mini challenge: Create a function to calculate price + tax and show result:

func calculateTaxes(price: Double, taxRate: Double) -> Double {
    let taxAmount = price * taxRate
    let total = price + taxAmount
    return total
}

let finalPrice = calculateTaxes(price: 52.99, taxRate: 0.05)
print("Total + tax: \(finalPrice)")
