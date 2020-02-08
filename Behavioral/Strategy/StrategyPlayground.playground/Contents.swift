
/*:
 Strategy Pattern
 --------
 
 Strategy pattern is a process from encapsulates algorithms in classes and making them reusable and interchangeable at runtime.

 There are a specific case which we can a clear value of Strategy Pattern as below:
  * When you need to do same thing in your code by different ways.
  * Instead of inhertance.
  * Alternative to if/else blocks.

 The `Startegy pattern` is one of the most useful and simple to use. By using this pattern has advantages maybe you may know:
  * `Single Responsibility` means that every class or module should have one and only one of changed or modification.
 
 ### Example:
 Strategy
 */

import Foundation

// Strategy
protocol LoggerMessage {
    func log(message: String)
}

struct Logger {
    let logMessage: LoggerMessage

    func log(message: String) {
        logMessage.log(message: message)
    }
}

struct LowerCaseLogger: LoggerMessage {
    func log(message: String) {
        debugPrint(message.lowercased())
    }
}

struct UpperCaseLogger: LoggerMessage {
    func log(message: String) {
        debugPrint(message.uppercased())
    }
}

/*:
 ### Usage
 */
var logger = Logger(logMessage: LowerCaseLogger())
logger.log(message: "Lower case logger")

logger = Logger(logMessage: UpperCaseLogger())
logger.log(message: "Upper case logger")
