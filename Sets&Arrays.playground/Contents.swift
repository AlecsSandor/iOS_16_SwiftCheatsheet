import Foundation

// Arrays
/// ordered
/// can have duplicates
/// time complexity O(n) when searching for items

// Sets
/// unordered
/// can't have duplicates
/// time compexity O(1) - constant
/// everything in a sets comforms to hashable

var neighboors: Set = ["Alex", "Jhon", "Miguel"]
var friends: Set = ["Martin", "Ulala", "Alex"]
var enemies: Set = ["Oliver", "Jhon"]
var subsetOf: Set = ["Martin"]

// Intersect - pull out overlap
let friendlyNeighboors = neighboors.intersection(friends)

// Substract - pull out difference
let enemyNeighboors = neighboors.subtracting(enemies)

// Disjoint - check for overlap
neighboors.isDisjoint(with: friends)

// Union - combine
neighboors.union(friends)

// Exclusive - see which items belong to only one list
enemies.symmetricDifference(neighboors)

// Subset
subsetOf.isSubset(of: friends)

// Superset
friends.isSuperset(of: subsetOf)

// Insert, Delete, Find
enemies.insert("Joo")
neighboors.remove("Alex")
enemies.contains("Joo")
