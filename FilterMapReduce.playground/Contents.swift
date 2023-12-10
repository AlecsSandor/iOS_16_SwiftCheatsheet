import Foundation

struct IndieApp {
    let name: String
    let monthlyPrice: Double
    let users: Int
}

// These functions interate over an array and return a new modified array

let appPortfolio = [
    IndieApp(name: "Some App", monthlyPrice: 11.9, users: 1000),
    IndieApp(name: "Another App", monthlyPrice: 22.9, users: 1000),
    IndieApp(name: "Third App", monthlyPrice: 0.0, users: 1000)
]

// Filter -  will returned only the elements that satisfy a condition
let freeApps = appPortfolio.filter{ $0.monthlyPrice == 0.0 }
print(freeApps)

// Map - pulls up only specific properties and optionaly applies certain modifications
let appNames = appPortfolio.map { $0.name }
print(appNames)

let increasedPrices = appPortfolio.map { $0.monthlyPrice * 1.5 }
print(increasedPrices)

// Reduce
let numbers = [3, 5, 9, 12, 18]
let sum = numbers.reduce(100, +)
print(sum)

let totalUsers = appPortfolio.reduce(0, { $0 + $1.users })
print(totalUsers)

// Chaining
let recurringRevenue = appPortfolio.map { $0.monthlyPrice * Double($0.users) }.reduce(0, +)
print(recurringRevenue)

// Compact Map - removes nils from an array
let nilNumbers: [Int?] = [1, nil, 17, nil, 3, 7, nil, 99]
let nonNilNumbers = nilNumbers.compactMap{ $0 }

// Flat Map - flattens an array of arrays into a single array
let arrayOfArrays: [[Int]] = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]
let singleArray = arrayOfArrays.flatMap { $0 }
print(singleArray)
