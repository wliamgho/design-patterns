# Builder Pattern
Builder pattern is used to provide a flexible solution to various object creation. The purpose of Builder pattern is to setup a default configuration for an object from its creation.

<p align="center">
  <img src="https://user-images.githubusercontent.com/25744906/75609466-6857bd00-5b3b-11ea-8499-4debb627b703.png">
</p>

### What is the different between `Factory` and `Builder` pattern?
 - `Factory` pattern is requires the entire object to be build in a single method call, with all the parameters pass in on a single line. The product get returned immediately.
- `Builder` pattern is focus on constructing a complex object with an additional method is called `build()`, which simply passes the builder object into the desired constructor and results. 

### When we should use it:
 - Helps us to focuses the parts on constructing with a complex object step by step.

