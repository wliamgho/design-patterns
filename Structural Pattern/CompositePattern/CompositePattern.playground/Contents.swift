import UIKit

/*:
 Composite Pattern
 ------
 */

enum EngineerRole: String {
  case frontEndEngineer = "Front End Engineer"
  case backEndEngineer = "Back End Engineer"
  case mobileEngineer = "Mobile Engineeer"
}

/*:
### Component
*/

protocol EngineerTeam: class {
  func showDetails()
}

/*:
### Primitive
*/

class EngineerProductTeam: EngineerTeam {
  private var name: String
  private var position: EngineerRole

  init(name: String, position: EngineerRole) {
    self.name = name
    self.position = position
  }

  func showDetails() {
    print("\(name) is an Engineer team as \(position.rawValue)")
  }
}

/*:
### Composite
*/

class Company: EngineerTeam {
  private var engineerTeams: [EngineerTeam] = []

  private var task: String
  private var position: EngineerRole

  init(task: String, position: EngineerRole) {
    self.task = task
    self.position = position
  }

  func showDetails() {
    for engineerTeam in engineerTeams {
      engineerTeam.showDetails()
    }
  }

  func addEngineer(newEngineer: [EngineerTeam]) {
    engineerTeams = newEngineer
  }
}

/*:
 ### Usage
 */

let josh = EngineerProductTeam(name: "Josh", position: .backEndEngineer)
let boy = EngineerProductTeam(name: "Boy", position: .frontEndEngineer)
let bryan = EngineerProductTeam(name: "Bryan Immanuel", position: .frontEndEngineer)

let engineerDepartment = Company(task: "Feature A", position: .frontEndEngineer)
engineerDepartment.addEngineer(newEngineer: [boy, bryan])
engineerDepartment.showDetails()
