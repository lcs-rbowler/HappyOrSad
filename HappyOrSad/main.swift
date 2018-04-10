//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()
var happy = 0
var sad = 0

// Loop forever until valid input is given
var validInput = ""
while 1 == 1 {
    
    //Make sure input is not nil
    guard let givenInput = readLine() else
    {
       // Tell the user there is a problem
        print("Please enter a sting with at least 1 character and no more than 255 characters")
        // Go to the next iteration of the loop
        continue
    }
    
    // Is the string the correct length
    if givenInput.count < 1 || givenInput.count > 255 {
        // Tell the user there is a problem
        print("Please enter a sting with at least 1 character and no more than 255 characters")
        // Go to the next iteration of the loop
        continue
    }
    
    // If we got this far the input is guarenteed to be valid
    validInput = givenInput
    break // VERY IMPORTANT - This stops the while loop
    
}


// Print out the input provided
print("You said: \(validInput)")
//print(rawInput) //optional
//print(input)    //non-optional


for individualCharacter in validInput
{
    
    // Catagorize the character
    switch individualCharacter {
    case "😃", "😄", "😊", "🙂":
        happy += 1
    case "😔", "😕", "🙁", "☹️":
        sad += 1
    default:
        break // Do nothing
    }
}

// Output
if happy > sad
{
    print("happy")
}
else if happy < sad
{
    print("sad")
}
else if happy == 0 && sad == 0
{
    print("none")
}
else if happy == sad
{
    print("unsure")
}
