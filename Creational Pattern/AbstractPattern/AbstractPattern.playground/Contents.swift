import UIKit

/*:
 Abstract Products
 --------
 */

protocol FoldingBike {
  func type(name: String) -> Void
}

protocol HybridBike {
  func type(name: String) -> Void
}

/*:
 Products
 --------
 */

class CompactFoldingBike: FoldingBike {
  var name: String?

  func type(name: String) -> Void {
    self.name = name
  }
}

class StandardFoldingBike: FoldingBike {
  var name: String?

  func type(name: String) -> Void {
    self.name = name
  }
}

class CompactHybridBike: HybridBike {
  var name: String?

  func type(name: String) {
    self.name = name
  }
}

class StandardHybridBike: HybridBike {
  var name: String?

  func type(name: String) {
    self.name = name
  }
}

/*:
 Abstract Factory
 --------
 */

protocol AbstractBikeFactory {
  func produceFoldingBike() -> FoldingBike

  func productHybridBike() -> HybridBike
}

/*:
Factory produce
 --------
 */

class UnitedFactory: AbstractBikeFactory {
  func produceFoldingBike() -> FoldingBike {
    return CompactFoldingBike()
  }

  func productHybridBike() -> HybridBike {
    return CompactHybridBike()
  }
}

class PacificFactory: AbstractBikeFactory {
  func produceFoldingBike() -> FoldingBike {
    return StandardFoldingBike()
  }

  func productHybridBike() -> HybridBike {
    return StandardHybridBike()
  }
}

/*:
 Usage
 --------
 */

let unitedFactory = UnitedFactory()
let unitedFoldingBike = unitedFactory.produceFoldingBike()
let unitedHybridBike = unitedFactory.productHybridBike()
unitedFoldingBike.type(name: "United Trifold 7")
unitedHybridBike.type(name: "United 700C Felipe H73")

let pacificFactory = PacificFactory()
let pacificHybridBike = pacificFactory.productHybridBike()
let pacificFoldingBike = pacificFactory.produceFoldingBike()
pacificHybridBike.type(name: "Pacific 2707")
pacificFoldingBike.type(name: "Pacific Illution 3")
