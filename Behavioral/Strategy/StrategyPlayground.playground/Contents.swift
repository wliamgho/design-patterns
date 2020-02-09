
/*:
 Strategy Pattern
 --------
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
