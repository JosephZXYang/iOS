//: Playground - noun: a place where people can play

// Purpose: Manipulate Strings

import UIKit

var string = "Hello"

// concatenate Strings
var newString = string + " Joseph!"

// loop over characters
for char in newString {
    
    print(char)
    
}

// new type of String
let newTypeString = NSString(string: newString)

// substring
newTypeString.substring(to: 5)
newTypeString.substring(from: 6)

// extract just the name
NSString(string: newTypeString.substring(from: 6)).substring(to: 6)
newTypeString.substring(with: NSRange(location: 6, length: 6))

// check substring
if (newTypeString.contains("Joseph")) {
    print("The newTypeString contains \"Joseph\"!")
}

// to array
newTypeString.components(separatedBy: " ")

// uppercase/lowercase
newTypeString.uppercased
newTypeString.lowercased
