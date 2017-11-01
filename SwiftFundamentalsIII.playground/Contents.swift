//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//exercise1
var array = [Int]()

for i in 1...255 {
    array.append(i)
}

//exercise2
var length = array.count

var num1 = Int(arc4random_uniform(UInt32(length)))
var num2 = Int(arc4random_uniform(UInt32(length)))

if num1 != num2 {
    array.swapAt(num1, num2)
}

//exercise3
for i in 1...100 {
    var num1 = Int(arc4random_uniform(UInt32(length)))
    var num2 = Int(arc4random_uniform(UInt32(length)))
    
    if num1 != num2 {
        array.swapAt(num1, num2)
    }
}

//exercise4
for i in 0..<array.count {
    if(array[i] == 45) {
        array.remove(at: i)
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(i)")
        break
    }
}
