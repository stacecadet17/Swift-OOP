import UIKit

var type: String = "Rectangle"
var description: String = "A quadrilateral with four right angles"

var width: Double = 5 //changed type of width to a double
var height: Double = 10.5
var area: Double = width * Double(height)

height += 1
width += 1

area = width * height
// Note how you can "interpolate" variables into Strings using the following syntax
print("The shape is a \(type) or \(description) with an area of \(area)")

