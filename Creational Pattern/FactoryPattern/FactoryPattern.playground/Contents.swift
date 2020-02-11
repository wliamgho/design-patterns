/*:
Factory Pattern
--------
*/

import Foundation

protocol Human {
  var name: String { get set }

  func eat()
  func sleep()
  func walk()
}

class Student: Human {
  var name: String

  init(name: String) {
    self.name = name
  }
  
  func eat() {
    print("\(name) is a student, \(name) is eating")
  }
  
  func sleep() {
    print("\(name) is a student, \(name) is sleeping")
  }
  
  func walk() {
    print("\(name) is a student, \(name) is walking")
  }
}

class Police: Human {
  var name: String

  init(name: String) {
    self.name = name
  }
  
  func eat() {
    print("\(name) is a police, \(name) is eating")
  }
  
  func sleep() {
    print("\(name) is a police, \(name) is sleeping")
  }
  
  func walk() {
    print("\(name) is a police, \(name) is walking")
  }
}


enum HumanRoles {
  case Student
  case Police
}

class HumanFactory {
  static func getHuman(byRoles roles: HumanRoles, name: String) -> Human {
    switch roles {
    case .Student:
      return Student(name: name)
    case .Police:
      return Police(name: name)
    }
  }
}

/*:
### Usage
*/

let student = HumanFactory.getHuman(byRoles: .Student, name: "Bryant")
student.sleep()

let police = HumanFactory.getHuman(byRoles: .Police, name: "Nick")
police.eat()
