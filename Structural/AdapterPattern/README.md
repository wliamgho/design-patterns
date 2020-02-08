# Adapter pattern

Adapter Pattern is used to provide a link between two otherwise incompatible types by wrapping the `adaptee` with a class supportes the interface required by the client.

In short, Adapter pattern represent as a `wrapper` between an object and transformed become the interface of object.

When creating an `adapter`, there are several names likes:
  - Adaptee
  An object who needs some adaptation before it used by client. 
  
  - Adapter
  An object that wraps of `Adaptee` and produce to `Target`.

  - Target
  Represent as an interface who will be used by client.

<p align="center">
  <img src="https://user-images.githubusercontent.com/25744906/74084525-8f722000-4aa2-11ea-924a-df004b778167.png">
</p>


## When we need Adapter pattern?
We can use the `Adapter` pattern when we have a deal with different interfaces with similar behavior likes recurring and reusable object-oriented.
