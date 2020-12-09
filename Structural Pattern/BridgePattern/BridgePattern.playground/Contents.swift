import UIKit

protocol Car {
  func drive()
}

protocol RaceCar {
  var car: Car { get set }
  func drive()
}

class Sedan: Car {
  func drive() {
    print("Sedan type")
  }
}

class RedCar: RaceCar {
  var car: Car

  init(car: Car) {
    self.car = car
  }
  
  func drive() {
    car.drive()
    print("Red Car")
  }
}

let sedan = Sedan()
let redSedan = RedCar(car: sedan)
redSedan.drive()
