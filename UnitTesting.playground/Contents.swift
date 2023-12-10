import Foundation

//  Code should be sructured in small to medium sized chunks/functions which allow for individual testing

// Create different test units for blocks of code in an app rather than using one big test for the entire app

func findTheBiggestCommonDivider(x: Int, y: Int, z: Int) -> Int {
    let smallestOne = min(z, min(x, y))
    var divider = 1
    for i in 1...smallestOne {
        if (x % i == 0) && (z % i == 0) && (y % i == 0) {
            divider = i
        }
    }
    return divider
}

findTheBiggestCommonDivider(x: 10, y: 20, z: 40)
