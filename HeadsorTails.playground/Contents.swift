//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func tossCoin() -> String {  // define function, expecting a string to be returned
    let coin = Int(arc4random_uniform(UInt32(2))) //variable coin is a random number of 1 or 2
    
    if coin == 0 {
        return "Heads" //edge case for if coin is zero
    }else {
        return "Tails"
    }
}

func tossMultipleCoins(tosses: Int) -> Double { //define function expecting a double to be returned
    
    var headsCount = 0 //initializing count variable for heads
    var tailsCount = 0 //initializing count variable for tails
    
    for _ in 0...tosses { //iterating through number of given tosses
        if tossCoin() == "Heads" { //increment by one everytime a toss is heads
            headsCount += 1
        }else {
            tailsCount += 1  //increment by one everytime a toss is tails
        }
    }
    
    return Double(tosses) / Double(headsCount) //returns ratio of head toss to total toss
}

tossMultipleCoins(tosses: 20)
