//: Playground - noun: a place where people can play

import UIKit


//Variable stored properties:
struct CalculateValue {
    
    var firstValue: Int
    var secondValue: Int
}
let totalValue = CalculateValue(firstValue: 5, secondValue: 10)

print("Total Value of items:  \(totalValue)")


//Lazy Stored Properties
class LazyModifier {
    
    lazy var objLazy = Sample()    // ‘var’ declaration is required.
}
class Sample {
    var stringObj = "Lazy Stored Property Example"
}
var example = LazyModifier()
print(example.objLazy.stringObj)



//Computed Properties

class Square {
    
    var xAxis = 0.0, yAxis = 0.0
    var length = 200.0, breadth = 150.0
    var middle: (Double, Double) {
        get {
            return (length / 2, breadth / 2)
        }
        set(axis){
            xAxis = axis.0 - (length / 2)
            yAxis = axis.1 - (breadth / 2)
        }
    }
}




