//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//one
struct Point {
    var x: Double
    var y: Double
    init(x: Double, y:Double) {
        self.x = x
        self.y = y
    }
}

//two
struct Line {
    var start: Point
    var end: Point
    
    func length() -> Double {
        let len: Double = (start.x - end.x)*(start.x - end.x)+(start.y - end.y)*(start.y - end.y)
        return len
    }
}

//three
struct Triangle {
    var Points: [Point] = []
}
