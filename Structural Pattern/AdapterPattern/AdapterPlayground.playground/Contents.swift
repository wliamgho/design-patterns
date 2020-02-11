/*:
 Adapter Pattern
 --------
 */

import Foundation

/*:
Target
*/
protocol newSeniorStudent {
    var age: Int { get }
}

/*:
 Adaptee
 */
struct Student {
    let id: String
    let name: String
    let age: Int

    init(id: String, name: String, age: Int) {
        self.id = id
        self.name = name
        self.age = age
    }
}

/*:
 Adapter
 */
struct NewStudent: newSeniorStudent {
    private let student: Student

    var age: Int {
        return Int(student.age)
    }

    init(student: Student) {
        self.student = student
    }
}

/*:
 Usage
 */

let student = Student(id: "123", name: "Bryant", age: 7)
let newStudent = NewStudent(student: student)
newStudent.age
