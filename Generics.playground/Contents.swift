import Foundation

// Example 1
protocol Drivable {
    func printDetails()
}

struct Motor {
    
}

// Inside the < bracket it's the name of the generic - convertion to call it T
// After the :, it's specified what protocol it has to follow, in this case is Drivable
// In this case the func takes in a parameter "vehicle" of generic type T, which can be any type that comforms to Drivable
func driveHome<T: Drivable>(vehicle: T) {
    
}

struct Porche911GT3:  Drivable {
    func printDetails() {
        <#code#>
    }
    
    var motor: Motor
    var wheels: Int
}

struct Motorcycle: Drivable {
    func printDetails() {
        <#code#>
    }
    
    var motor: Motor
    var wheels: Int
}

let my911 = Porche911GT3(motor: Motor(), wheels: 4)
let myMotorcycle = Motorcycle(motor: Motor(), wheels: 2)

driveHome(vehicle: my911)
driveHome(vehicle: myMotorcycle)

// Example 2
func determineHigherValue<T: Comparable>(valueOne: T, valueTwo: T) {
    let higherValue = valueOne > valueTwo ? valueOne : valueTwo
    print(higherValue)
}

determineHigherValue(valueOne: 3, valueTwo: 10)
determineHigherValue(valueOne: "Alex", valueTwo: "Calina")
