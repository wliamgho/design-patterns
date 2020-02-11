/*:
Decorator Pattern
--------
*/

import Foundation

/*:
Core
*/

protocol Human {
  func life() -> Int
}

/*:
Core subclasses
*/

struct Student: Human {
  func life() -> Int {
    return 80
  }
}

struct Police: Human {
  func life() -> Int {
    return 60
  }
}

/*:
Decorator
*/

protocol CharacterType: Human {
  var base: Human { get }
}

/*:
Implementation
*/

struct Athlete: CharacterType {
  var base: Human

  func life() -> Int {
    return 20 + base.life()
  }

  func healthy() {
    print("HEALTHY")
  }
}

/*:
Usage
*/

let student = Student()
student.life()

let basketBallPlayer = Athlete(base: student)
basketBallPlayer.life()
basketBallPlayer.healthy()
