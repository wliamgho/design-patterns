
/*:
 Observer Pattern
 --------
 
 Observer pattern is a process allow an object to publish changes to its state. When the object is updated, all of object who have subscribed will be notified.
 
 ### Example:
 Observer
 */

import Foundation

protocol PropertObserver: class {
    func willChange(propertyMessage: String, newPropertyValue: Any?)
    func didChange(propertyMessage: String, oldPropertyValue: Any?)
}

final class MessageBoards {
    weak var observer: PropertObserver?

    private let message = "Hello, World"

    var testMessageNumber: Int = 0 {
        willSet(newValue) {
            observer?.willChange(propertyMessage: message, newPropertyValue: newValue)
        }
        didSet {
            observer?.didChange(propertyMessage: message, oldPropertyValue: oldValue)
        }
    }
}

final class Observer: PropertObserver {
    func willChange(propertyMessage: String, newPropertyValue: Any?) {
        if newPropertyValue as? Int == 1 {
            debugPrint("Added")
        }
    }

    func didChange(propertyMessage: String, oldPropertyValue: Any?) {
        if oldPropertyValue as? Int == 0 {
            debugPrint("State")
        }
    }
}

/*:
 ### Usage
 */
var observerInstance = Observer()
var message = MessageBoards()
message.observer = observerInstance
message.testMessageNumber += 1
