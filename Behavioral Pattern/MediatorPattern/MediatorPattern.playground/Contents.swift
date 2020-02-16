import UIKit

/*:
 Mediator Pattern
 ------
 */

protocol Mediator {
  func sending(message: String, sender: Sender)
}

protocol Sender {
  var name: String { get set }
  var mediator: Mediator { get }
  func send(message: String)
  func receive(message: String)
}

class Human: Sender {
  var name: String
  var mediator: Mediator

  init(name: String, mediator: Mediator) {
    self.name = name
    self.mediator = mediator
  }

  func send(message: String) {
    mediator.sending(message: message, sender: self)
  }

  func receive(message: String) {
    print("RECEIVED: \(message)")
  }
}

class HumanB: Sender {
  var name: String
  var mediator: Mediator
  
  init(name: String, mediator: Mediator) {
    self.name = name
    self.mediator = mediator
  }
  
  func send(message: String) {
    mediator.sending(message: message, sender: self)
  }
  
  func receive(message: String) {
    print("HumanB Received: \(message)")
  }
}

/*:
 ### Mediator
 */

class MessageMediator: Mediator {
  var receipients: [Sender] = []

  func register(sender: Sender) {
    receipients.append(sender)
  }

  func sending(message: String, sender: Sender) {
    for receipient in receipients {
      if receipient.name != sender.name {
        receipient.receive(message: message)
      }
    }
  }
}

/*:
 ### Usage
 */

let mediator = MessageMediator()
let donie = Human(name: "Donie", mediator: mediator)
let ronie = HumanB(name: "Ronie", mediator: mediator)

mediator.register(sender: ronie)
mediator.register(sender: donie)
mediator.sending(message: "Hi, my name is \(donie.name)", sender: donie)
mediator.sending(message: "Hi \(donie.name), nice to know you. My name is \(ronie.name)", sender: ronie)
