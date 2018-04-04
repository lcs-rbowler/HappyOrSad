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
    if individualCharacter == "😀" || individualCharacter == "😄" || individualCharacter == "😊" || individualCharacter == "🙂"
    {
        happy += 1
    }
    else if individualCharacter == "😔" || individualCharacter == "😕" || individualCharacter == "🙁" || individualCharacter == "☹️"
    {
        sad += 1
    }
    
    print(individualCharacter)
}

if happy > sad
{
    print("The message is happy.")
}
else if happy < sad
{
    print("The message is sad.")
}
else if happy == 0 && sad == 0
{
    print("None.")
}
else if happy == sad
{
    print("Human emotion confuse robot. Beep boop.")
}
