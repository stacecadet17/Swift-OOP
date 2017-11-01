//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Card {
    var Color: String
    var Roll: Int
}

class Deck {
    
    var cards: [Card] = []
    init() {
        for i in 0..<3 {
            for _ in 0..<10 {
                if i == 0 {
                    let card = Card(Color:"Blue", Roll: Int(arc4random_uniform(2))+1)
                    self.cards.append(card)
                }
                else if i == 1 {
                    let card = Card(Color:"Red", Roll: Int(arc4random_uniform(2))+3)
                    self.cards.append(card)
                } else {
                    let card = Card(Color:"Green", Roll: Int(arc4random_uniform(3))+4)
                    self.cards.append(card)
                }
            }
        }
    }
    func deal()->Card? {
        if self.cards.count > 0 {
            return self.cards.remove(at: 0)
        }
        else {
            return nil
        }
    }
}

class Player {
    var name: String
    var hand: [Card]
    
    init(name: String){
        self.name = name
        self.hand = [Card]()
    }
    
    func draw(deck:Deck) -> Card? {
        if let drawnCard = deck.deal() {
            self.hand.append(drawnCard)
            return drawnCard
        }
        else {
            return nil
        }
    }
}

