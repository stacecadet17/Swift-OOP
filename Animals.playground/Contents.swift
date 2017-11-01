//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Animal {
    var name: String
    var health: Int = 100
    
    init(name: String){
        self.name = name
    }
    
    func displayHealth() {
        print(self.health)
    }
}

class Cat: Animal {
    init(catName: String){  //initialize a name for the cat
        super.init(name: catName)  //refer to parent class to pass the name attribute down and set it to the catname
        self.health = 150
    }
    
    func growl(){
        print("Rawr")
    }
    
    func run(){
        print("running")
        self.health -= 10
    }
}

class Cheetah: Cat {
    init(cheetahName: String){
        super.init(catName: cheetahName)
    }
    
    override func run(){
        if self.health >= 50 {
            print("running really fast!")
            self.health -= 50
        }
    }
    func sleep(){
        if self.health + 50 <= 200 {
            self.health += 50
        }
    }
}

class Lion: Cat {
    init(lionName: String){
        super.init(catName: lionName)
        self.health = 200
    }
    override func growl(){
        print("ROAR! I am King of thr Jungle")
        
    }
}

var myCheetah = Cheetah(cheetahName: "Chester")
myCheetah.run()
myCheetah.run()
myCheetah.run()
myCheetah.run()
myCheetah.sleep()
myCheetah.sleep()
myCheetah.sleep()
myCheetah.displayHealth()

var myLion = Lion(lionName: "Mufasa")
myLion.run()
myLion.run()
myLion.run()
myLion.growl()
myLion.displayHealth()
