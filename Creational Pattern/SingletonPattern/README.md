# Singleton Pattern
Singleton is a design pattern that instance of the class only once then shared everywhere. With Singleton pattern, it's make easier to shared your class because it's instance globally.

### When we should use Singleton:
- Managing access to a resource which is shared by the entire application, and it would be destructive to potentially have multiple instances of the same class.

### Why we should use Singleton:
* Reducing class to be used over and over in every app.

### Why we should avoid of using Singletons:
* Difficult to mock in TDD sense.
* Singleton cannot be subclassed.
* Singleton classes must be memory-leak free. The instance of singleton class is created once and it remains for the lifetime of the app.

### What we should known about Singleton patterm:
- A singleton implementation may use `lazy initialization`. It guaranteed to be initialized by once, even when accessed by multiple threads simulataneously. If the static method might be called from multiple threads simultaneously, measures may need to be taken to prevent  `race conditions` that could result in the creation of multiple instances of the class by using `lazy initialization` with `double-checked locking` using `GCD`.
