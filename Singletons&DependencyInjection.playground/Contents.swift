import Cocoa

//SINGLETON
// A singleton is an instance of a class that can only be created once and is globally accessible throughout your codebase
// eg. userDefaults

// Pros: can only be one,  global access to it
// Cons: global access to it -> bugs

// Creating a singleton class
final class MySingleton {
    
    static let shared = MySingleton()
    // this guarantes the uniqueness
    private init() {}
    
    func doSomething() {}
    
}

// calling it
MySingleton.shared.doSomething()


// DEPENDENCY INJECTION
// also called Initializer injection or Constructor injection

//eg.
class NetworkManager {
    func fetchIngredients() {
        print("Ingredients fetched")
    }
}

class Bag {
    var items: [String] = []
    
    func placeOrder() {
        print("Ordered PLaced")
    }
}
// in this case the class its creating its own network manager and properties so no dependency injection
//class BurritoIngredientsViewModel {
//    let networkManager = networkManager()
//    let bag = Bag()
//
//    func fetchItems() {
//        networkManager.fetchIngredients()
//    }
//
//    func placeOrder() {
//        bag.placeOrder
//    }
//}

//  Here the dependencies are injected into the child view/struct/object etc
class BurritoIngredientsViewModel {
    let networkManager: NetworkManager
    let bag: Bag
    
    init(networkManager: NetworkManager, bag: Bag) {
        self.networkManager = networkManager
        self.bag = bag
    }

    func fetchItems() {
        networkManager.fetchIngredients()
    }

    func placeOrder() {
        bag.placeOrder
    }
}

struct MealCategoryView {
    let networkManager = NetworkManager()
    let bag = Bag()
    
    func goToView() {
        let viewModel = BurritoIngredientsViewModel(networkManager: networkManager, bag: bag)
    }
}

// Benefits:
/// simplify the flow of data
/// separation of concerns
/// easier testing
