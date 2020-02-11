/*:
 Singleton
 ---------
 */
import Foundation

final class Logger: NSObject {
  static let shared = Logger()

  private override init() {}

  func logIsTracking() -> String {
    return "Log is tracking ..."
  }
}

/*:
 ### Usage:
 */

let logger = Logger.shared.logIsTracking()

/*:
Thread Safe of Singleton
---------
 
 By having a computed property we should have a better performance by using DispatchQueue to create as concurrent. It's needed to add the `barrier` flag when writing to the property. The barrier used to ensure that the item will be executed when all previously scheduled item on the queue have finished.
*/

final class Single {
  static let shared = Single()

  private let queue = DispatchQueue(label: "Single.queue", qos: .default, attributes: .concurrent)

  private var message = "Typing..."

  private init() {}

  var isMessaging: String {
    get {
      return queue.sync {
        message
      }
    } set {
      queue.async(flags: .barrier) {
        self.message = newValue
      }
    }
  }

  func setMessage(message: String) {
    isMessaging = message
  }
}

/*:
### Usage:
*/
let single = Single.shared
single.setMessage(message: "Texting")
single.isMessaging
