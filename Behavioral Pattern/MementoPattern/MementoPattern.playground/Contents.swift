import UIKit

/*:
 Memento Pattern
 --------
 */

protocol Memento {
  var message: String { get }

  func saveMessage(messaging: Messaging)

  func restore() -> String
}

/*:
 Caretaker:
 Contains informations from Originator
 --------
 */

class Messaging {
  var message: String

  init(checkpoint: Checkpoint) {
    self.message = checkpoint.message
  }

  func sending(message: String) {
    self.message = message
  }
}

class Receiver {
  private var message: String

  init(checkpoint: Checkpoint) {
    self.message = checkpoint.message
  }

  func receive() -> String {
    return message
  }
}

/*:
 Originator:
 Save and Restore message
 --------
 */
class Checkpoint: Memento {
  private var messagingMessage: String = ""

  var message: String {
    return messagingMessage
  }

  func saveMessage(messaging: Messaging) {
    messagingMessage = messaging.message
  }

  func restore() -> String {
    return message
  }
}

/*:
 Usage:
 */

let checkpoint = Checkpoint()
let messaging = Messaging(checkpoint: checkpoint)

messaging.sending(message: "Hallow")
checkpoint.saveMessage(messaging: messaging)

let receiver = Receiver(checkpoint: checkpoint)
receiver.receive()

checkpoint.restore()
