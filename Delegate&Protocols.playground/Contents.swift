import Cocoa

protocol Work {
    func sing(song: String) -> String
}

struct Boss {
    var delegate: Work?
}

struct Employee: Work {
    
    init() {
        boss.delegate = self
    }
    
    func sing(song: String) -> String {
        return "I am singing \(song)!"
    }
}

var boss = Boss()
let john = Employee()

boss.delegate?.sing(song: "Peaches")
