//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//exercise 1
for i in 1...255 {
    print(i)
}

//exercise 2
for i in 1...100 {
    if (i % 3 == 0 || i % 5 == 0) && i % 15 != 0{
        print(i)
    }
}

//exercise 3
for i in 1...100{
    if i % 15 == 0 {
        print("fizzbuzz")
    }else if i % 3 == 0{
        print("fizz")
    }else if i % 5 == 0 {
        print ("buzz")
    }
}

