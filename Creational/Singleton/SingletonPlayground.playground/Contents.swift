/*:
 Singleton
 ---------
 
 Singleton is a design pattern that instance of the class only once then shared everywhere. With Singleton pattern, it's make easier to shared your class because it's instance globally.
 
 ### Why we should use Singleton:
 * Reducing class to be used over and over in every app.
 
 ### Why we should avoid of using Singletons:
 * Difficult to mock in TDD sense.
 * Singleton cannot be subclassed.
 * Singleton classes must be memory-leak free. The instance of singleton class is created once and it remains for the lifetime of the app.
 *
 
 ### Example:
 */

final class Logger {
    static let shared = Logger()

    private init() {}

    func logIsTracking() -> String {
        return "Log is tracking ..."
    }
}

/*:
 ### Usage:
 */

let logger = Logger.shared.logIsTracking()
