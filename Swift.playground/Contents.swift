import UIKit

// Collection Types
    /// Arrays
    /// Sets
    /// Dictionaries
    /// Tuples

// Control Flow
    /// For-In Loops
    /// ForEach
    /// While Loops
    /// Repeat-While
    /// Controle Flow: If /  Switch /  Defer / Guard / #available

// Functions

// Closures
    /// Shorthand Argument Names
    /// Operator Methods
    /// Trailing Closures
    /// Capturing Values
    /// Escaping Closures

// Enumerations -> value type
    /// Matching Enumeration Values with a Switch Statement
    /// Iterating over Enums
    /// Raw Values

// Structures and Classes
    /// Structure -> value type
    /// Classes -> refference type

// Properties
    /// Stored Properties
    /// Lazy Stored Properties
    /// Computed Properties
    /// Get & Set
    /// Read Only Property
    /// Property Observer { willSet, DidSet }
    /// Property Wrappers
    /// Global and Local Properties

// Methods - mutating methods

// Subscripts

// Inheritance
    /// Base Class
    /// Subclassing
    /// Overriding
    /// Preveting Overrides

// Initialization -> init()

// Deinitialization -> deinit()

// Optional Chaining

// Error Handling
    /// Representing and Throwing Errors
    /// Propagating Errors Using Throwing Functions
    /// Handling Errors Using Do-Catch
    /// Converting Errors to Optional Values
    /// Disabling Error Propagation
    /// Specifying Cleanup Actions

// Concurency

// Macros

// Type Casting
    /// Checking Type - is
    /// Downcasting - as?
    /// Typecasting for any object [Any]

// Nested Types

// Extensions

// Protocols

// Generics
    /// functions
    /// types

// Automatic Reference Counting
    /// Strong & Weak references

// Memory Safety

// Access Control
    /// Syntax - > open / public / internal / fileprivate / private

// Statements: --------------------------------------------------------------|

//for <#item#> in <#collection#> {
//   <#statements#>
//}

//while <#condition#> {
//   <#statements#>
//}

//repeat {
//   <#statements#>
//} while <#condition#>

//guard <#condition#> else {
//   <#statements#>
//}

//switch <#control expression#> {
//case <#pattern 1#>:
//    <#statements#>
//case <#pattern 2#> where <#condition#>:
//    <#statements#>
//case <#pattern 3#> where <#condition#>,
//    <#pattern 4#> where <#condition#>:
//    <#statements#>
//default:
//    <#statements#>
//}
// case let (x, y) where x == y:

//let representation: Mirror.AncestorRepresentation = .generated
//switch representation {
//case .customized:
//    print("Use the nearest ancestor’s implementation.")
//case .generated:
//    print("Generate a default mirror for all ancestor classes.")
//case .suppressed:
//    print("Suppress the representation of all ancestor classes.")
//@unknown default:
//    print("Use a representation that was unknown when this code was compiled.")
//}
// Prints "Generate a default mirror for all ancestor classes."

//break
//break <#label name#>

//continue
//continue <#label name#>

//return
//return <#expression#>

//throw <#expression#>

//defer {
//    <#statements#>
//}

//do {
//    try <#expression#>
//    <#statements#>
//} catch <#pattern 1#> {
//    <#statements#>
//} catch <#pattern 2#> where <#condition#> {
//    <#statements#>
//} catch <#pattern 3#>, <#pattern 4#> where <#condition#> {
//    <#statements#>
//} catch {
//    <#statements#>
//}

//if #available(<#platform name#> <#version#>, <#...#>, *) {
//    <#statements to execute if the APIs are available#>
//} else {
//    <#fallback statements to execute if the APIs are unavailable#>
//}

//  --------------------------------------------------------------|

// Must known topics for Interviews:
    /// Network Calls
/// Generics
/// Closures
/// Filter, Map, Reduce
/// Array vs Set
/// Optional Unwrapping
/// Unit Tests
/// Singletons
/// Dependency Injection
/// Delegates & Protocols
/// View LifeCycle
/// Concurency & Threading
/// ARC & Retain Cycles
