import Foundation

struct User {
    let name: String
    let age: Int?
}

let user = User(name: "Sean", age: 78)

// If let
if let age = user.age {
    print(age)
} else {
    print("no age")
}

// Guard let
func check(age: Int?) {
    guard let age = age else { // in Swift 5.7 you can do  guard let age else
        print("Age is nil")
        return
    }
    if age > 40 {
        print("You are old!")
    }
}
check(age: user.age)

// Nil Coalescing - provides a default value
let age = user.age ?? 0

// Force Unwrap
let anotherAge = user.age!

// Optional Chaining
var optionalUser: User?
let name = optionalUser?.name ?? "Not Given"
