//: Playground - noun: a place where people can play

import UIKit

//Constant stored properties

struct CalculateValue {
    
    var firstValue: Int
    var secondValue: Int
}

let totalValue = CalculateValue(firstValue: 5, secondValue: 10)
print("Total Value of items:  \(totalValue)")
/******Modifying firstValue from 5 to 30 **********/
totalValue.firstValue = 30
print("Total Value of items:   \(totalValue)") // Error


//Read-Only Computed Properties

struct Square {
    
    var sideOne = 0.0, sideTwo = 0.0
    var area: Double {
        return sideOne * sideTwo
    }
}
let totalArea = Square(sideOne: 10.0, sideTwo: 20.0)
print("totalarea of square \(totalArea.area)" )




//Property Observers
class CalculateIndex{
    var indexValue: Int = 0{
        willSet(newValue){
            print("Index value is: \(newValue)")
        }
        didSet{
            if indexValue > oldValue{
                print(" New index value is: \(indexValue - oldValue)")
            }
        }
    }
}
let index = CalculateIndex()
index.indexValue = 20
index.indexValue = 30
//Output:
//Index value is: 20
//New index value is: 20
//Index value is: 30
//New index value is: 10
