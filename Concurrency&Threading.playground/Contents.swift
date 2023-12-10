import Cocoa

//  serial queue
// concurrent queue - faster but unpredictable order
// every app has 1 main queue and 4 concurrent queues
//DispatchQueue.main.async {
//    self.tableView.reloadData()
//}
//
//DispatchQueue.global(qos: .background).async {
//    // Code to run on background queue
//}



// ARC - Automatic Reference Counting

class Person {
    
    let name: String
    var macbook: MacBook?
    
    init(name: String, macbook: MacBook?) {
        self.name = name
        self.macbook = macbook
    }
    
    deinit {
        print("\(name) deinitialize")
    }
    
}

class MacBook {
    
    let name: String
    weak var owner: Person?
    
    init(name: String, owner: Person?) {
        self.name = name
        self.owner = owner
    }
    
    deinit {
        print("\(name) deinitialize")
    }
}

var sean: Person?
var matilda: MacBook?

sean = Person(name: "Sean", macbook: nil)
matilda = MacBook(name: "Matilda", owner: nil)

// this is a strong reference from sean to matilda
sean?.macbook = matilda
// but because there is a weak var owner in matilda the reference from matilda to sean is weak
matilda?.owner = sean

sean = nil
print(matilda?.owner)
