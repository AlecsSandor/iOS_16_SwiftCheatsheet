import Foundation

// Class - reference type
    /// - inheritance

// Struct - value type

class Car {
    var year: Int
    var make: String
    var color: String
    
    init(year: Int, make: String, color: String) {
        self.year = year
        self.make = make
        self.color = color
    }
}

// Both Variables point to the same memory address (data)
var myCar =  Car(year: 2022, make: "Porche", color: "Gray")
var stolenCar = myCar

// Changing the color of the stolenCar will change the color of myCar
stolenCar.color = "Green"
print(myCar.color)

// --------------------------------------------------------

struct CarStruct {
    var year: Int
    var make: String
    var color: String
}

// When assigning myCarStruct to stolenCarStruct, it creates a copy of myCarStruct
var myCarStruct = CarStruct(year: 2022, make: "Porche", color: "Gray")
var stolenCarStruct = myCarStruct

// Changing the color of the stolenCarStruct won't affect myCarStruct since they are two different entities
stolenCarStruct.color = "Green"
