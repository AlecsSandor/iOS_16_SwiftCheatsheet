import Foundation

struct Student {
    let name: String
    var testScore: Int
}

let students = [
    Student(name: "Alex", testScore: 90),
    Student(name: "Luke", testScore: 99),
    Student(name: "Jake", testScore: 39)
]

// Creating a closure to filter the students by their score
// () == Void
// this is a property
var topStudentFilter: (Student) -> Bool = { student in
    return student.testScore > 80
}
// Writing it as a function
func topStudentFilterF(student: Student) -> Bool {
    return student.testScore > 20
}

// filter runs the topStudentFilter closure for every student in the students array and return only the ones with scores over 80
let topStudents = students.filter(topStudentFilter)

// writing the filter function using parameters
let topStudentsAgain = students.filter { student in
    return student.testScore > 80
}
let topStudentsShorthand = students.filter { $0.testScore > 80 }

// Sroting the students
let studentRanking = topStudents.sorted { student1, student2 in
    return student1.testScore > student2
        .testScore
}
let studentRankingShorthand = topStudents.sorted { $0.testScore > $1.testScore
}

// use @escaping / weak self when calling closures to allow them to exist even after the function ends
