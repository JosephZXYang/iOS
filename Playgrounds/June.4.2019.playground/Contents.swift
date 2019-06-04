//: Playground - noun: a place where people can play

import UIKit

// 1. Optional types

// User input
let userInputText = "3"

// Try to cast to int
let userInputNumber = Int(userInputText)

if let testValue = userInputNumber {
    
    // Valid integer input
    let catAge = testValue * 7
    print(catAge)
    
} else {
    
    // Print an error message
    print("Invalid input. Should be integer.")
    
}
