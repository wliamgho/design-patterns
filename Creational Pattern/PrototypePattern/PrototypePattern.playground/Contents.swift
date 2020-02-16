import UIKit

/*:
Prototype Pattern
 --------
 */

protocol Game {
  var name: String { get set }
  func score(teamA: Int, teamB: Int)

  func clone() -> Game
}

class GameEvent: Game {
  var name: String

  init(name: String) {
    self.name = name
  }

  func score(teamA: Int, teamB: Int) {
  }
  
  func clone() -> Game {
    return GameEvent(name: name)
  }
}

/*:
 ### Usage:
 */

let basketBallEvent = GameEvent(name: "BasketBall")
basketBallEvent.score(teamA: 20, teamB: 22)

let basketBallSecondEvent = basketBallEvent.clone()
basketBallSecondEvent.score(teamA: 24, teamB: 10)
