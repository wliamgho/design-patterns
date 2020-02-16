import UIKit

/*:
 Facade Pattern
 --------
 */

class Engine {
  func produceMaticEngine() {
    print("120 CC")
  }

  func produceRacingEngine() {
    print("250 CC")
  }
}

class Type {
  func produceOffRoadType() {
    print("Four Stroke")
  }

  func produceDailyType() {
    print("Scooter")
  }
}

class Yamaha {
  let engine = Engine()
  let type = Type()

  func produceCheapMotorcycle() {
    engine.produceMaticEngine()
    type.produceDailyType()
  }
}

/*:
 ### Usage
 */

let yamahaMotor = Yamaha()
yamahaMotor.produceCheapMotorcycle()
