import Cocoa

// Declarations
class           // Defines a class
deinit          // Defines a deinitializer
enum            // Defines an enumeration
extension       // Extends the functionality of an existing type
func            // Defines a function or method
import          // Imports a module or library
init            // Defines an initializer
let             // Declares a constant
protocol        // Defines a protocol
static          // Declares a type-level property or method
struct          // Defines a structure
subscript       // Defines a subscript to access elements of a collection
typealias       // Creates an alias for a type
var             // Declares a variable

// Statements
break           // Exits a loop or switch statement
continue        // Skips the rest of the current iteration and continues with the next
fallthrough     // Transfers control to the next case in a switch statement
return          // Exits a function and returns a value
throw           // Throws an error

// Control Flow
if              // Conditional statement
else            // Branch executed when the if condition is false
switch          // Selects a code block to execute based on the value of an expression
case            // A condition in a switch statement
default         // The branch to execute when no case matches
for             // Iterates over a sequence
in              // Used in a for loop to specify the sequence
while           // Repeats a block of code while a condition is true
repeat          // Repeats a block of code until a condition is true
do              // Used with repeat to indicate the start of the loop

// Error Handling
catch           // Catches and handles errors
throws          // Indicates that a function can throw errors
try             // Used with a throwing function to handle errors

// Availability
#available      // Checks if a particular API is available on the current platform
#unavailable    // Marks an API as unavailable
#if             // Conditional compilation based on build configurations
#else           // Branch executed when the condition in #if is false
#elseif         // Additional condition for #if
#endif          // Ends a conditional compilation block

// Access Control
private         // Limits the scope to the current file
fileprivate    // Limits the scope to the current file and its extensions
internal        // Limits the scope to the current module
public          // Makes the declaration accessible from any source file
open            // Makes the declaration accessible from other modules

// Inheritance
final           // Prevents further subclassing or overriding
class           // Indicates a class member
convenience     // Marks a secondary, more convenient initializer
dynamic         // Indicates that a method or property can be dispatched dynamically
infix           // Defines an infix operator
lazy            // Delays the initialization of a property until it is accessed
optional        // Defines an optional type
override        // Overrides a method or property in a subclass
postfix         // Defines a postfix operator
prefix          // Defines a prefix operator
required        // Requires subclasses to provide an implementation
static          // Indicates a type-level property or method
unowned         // Represents an unowned reference (no ownership is implied)
weak            // Represents a weak reference

// Patterns
_               // Placeholder for a value that is ignored
as              // Type casting
is              // Type checking
self            // Refers to the instance within a method
super           // Refers to the superclass instance

// Closures
{ }             // Defines a closure (anonymous function)
->              // Separates the parameter and return types in a closure signature

// Other
associatedtype  // Declares an associated type within a protocol
continue        // Skips the rest of the current iteration and continues with the next
default         // Specifies the default case in a switch statement
defer           // Defers the execution of a block of code until the current scope is exited
didSet          // Observes changes to a property's value
get             // Specifies the code to run when getting the value of a property
lazy            // Delays the initialization of a property until it is accessed
mutating        // Allows a method to modify the properties of a value type
none            // Placeholder for an absence of a value
nonmutating     // Indicates that a method does not modify the instance it is called on
operator        // Declares a custom operator
override        // Overrides a method or property in a subclass
precedence      // Specifies the priority of an operator
prefix          // Specifies a prefix operator
Protocol        // Indicates a protocol type
postfix         // Specifies a postfix operator
repeat          // Repeats a block of code until a condition is true
required        // Requires subclasses to provide an implementation
return          // Exits a function and returns a value
Self            // Refers to the type within a protocol or class
set             // Specifies the code to run when setting the value of a property
Type            // Represents the type of a value
Type            // Represents the metatype of a type
unowned         // Represents an unowned reference (no ownership is implied)
var             // Declares a variable
weak            // Represents a weak reference
where           // Adds constraints to associated types or generic parameters
willSet         // Observes changes to a property's value before it is set
