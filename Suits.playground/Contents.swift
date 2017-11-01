//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
let cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
var deckOfCards = [String: [Int]]()

for i in 0..<suits.count{ //for loop starting at zero through all 4 suits
    deckOfCards[suits[i]] = cards //iterate through each card in each suit
}

print(deckOfCards)

