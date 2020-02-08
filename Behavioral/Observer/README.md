# Observer Pattern
Observer pattern is a process allow an object to publish changes to its state. When the object is updated, all of object who have subscribed will be notified.

### When we should use Observer pattern:
- The change of a state in one object must be reflected in another object without keeping the objects tight coupled. Mainly used to implement distributed event handling systems.

### What we should known about Observer pattern:
- The observer pattern can cause `memory leaks` because in basic implementation it requires both to register the subject and holds strong references to the observer to keeping them alive. This can be prevented by the subject holding weak references to the observers.
