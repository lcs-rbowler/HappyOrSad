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

//Make sure input is not nil
guard let input = rawInput else
{
        //error
        exit(9)
}


// Print out the input provided
print("You said: \(input)")
//print(rawInput) //optional
//print(input)    //non-optional


for individualCharacter in input
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
