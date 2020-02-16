import UIKit

/*:
 Builder Pattern
 --------
 */

protocol BikeBluePrint {
  var type: String { get set }
  var speed: Int { get set }
  var name: String { get set }
  var isFolding: Bool { get set }
}

/*:
 Concrete Builder
 --------
 */

class Bike: BikeBluePrint {
  var type: String
  var speed: Int
  var name: String
  var isFolding: Bool

  init(type: String, speed: Int, name: String, isFolding: Bool) {
    self.type = type
    self.speed = speed
    self.name = name
    self.isFolding = isFolding
  }
}

/*:
 Product of Concrete Builder
 --------
 */

class UnitedBikeBuilder: BikeBluePrint {
  var type: String = "Hybrid"
  var speed: Int = 21
  var name: String = "United Slick-71"
  var isFolding: Bool = false

  func build() -> Bike {
    return Bike(type: type, speed: speed, name: name, isFolding: isFolding)
  }
}

/*:
 Usage:
 --------
 */

var builder = UnitedBikeBuilder()
let standardHybridBike = builder.build()
print(standardHybridBike.name)

builder.type = "Folding"
builder.isFolding = true
builder.name = "United Trifold 3s"
builder.speed = 3

let foldingBike = builder.build()
print(foldingBike.name)
