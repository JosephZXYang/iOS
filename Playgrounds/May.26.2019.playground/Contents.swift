//: Playground - noun: a place where people can play

import UIKit

// 1. Variable definitions

// var vs. let
let str1 = "string defined by let"
var str2 = "string defined by var"

// str1 = "try to change value"      // error, should be immutable
str2 = "try to change value"         // ok, mutable



// 2. Variable types

// String
let name = "Joseph"
let msg = "Hello " + name // concatenate strings

// Int
var myInt = 123
let myInt1 = myInt * 2
let myInt2 = myInt + 100
myInt = myInt / 10

let age = 20
print("My name is \(name) and I am \(age) years old")

// Double & Float
var a: Double = 3.14
var b: Float = 3.14
var c = 1.0

// print(a / b) // error, different data types
print (a / c) // default decimal data type is double

// Boolean
let bool = false

var double1: Double = 5.76
var int1: Int = 8
let product = double1 * Double(int1)
print("The product of \(double1) and \(int1) is \(product)")

// Array
var array1 = [1, 2, 3, 4]
var array2 = [3.87, 7.1, 8.9]
array2.remove(at: 1)
array2.append(array2[0] * array2[1])

// Dictionary
var menu = [String: Double]()
menu["pizza"] = 10.99
menu["ice cream"] = 4.99
menu["salad"] = 7.99
print("The total cost of my meal is \(menu["pizza"]! + menu["ice cream"]! + menu["salad"]!)")



// 3. If-Statements
var myAge = 13
if (myAge >= 18) {
    print("You can play!")
}
else {
    print("You are tooooo young!")
}

// Login system: username/password. Four cases: both wrong/both correct/username wrong/password wrong
var username = "Joseph"
var password = "123"
if (username == "Joseph") && (password == "123") {
    print ("Successfully log in")
}
else if (username != "Joseph") && (password == "123") {
    print ("Username wrong")
}
else if (username == "Joseph") && (password != "123") {
    print ("Password wrong")
}
else {
    print ("Fuck off")
}













