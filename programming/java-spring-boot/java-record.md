# Record in Java
## Definition
In Java, a record is a special kind of class introduced in Java 14 (preview) and made stable in Java 16, designed to model immutable data objects with minimal boilerplate.
## What is a Record
A record:

- Automatically creates a constructor, getters, equals(), hashCode(), and toString().

- Is implicitly final and immutable.

- Is perfect for data-carrying classes (like DTOs, API models, etc.).

## Syntax
```java
public record Task(int id, String description, boolean completed) {}
```
This is equivalent to writing:
```java
public final class Task {
    private final int id;
    private final String description;
    private final boolean completed;

    public Task(int id, String description, boolean completed) {
        this.id = id;
        this.description = description;
        this.completed = completed;
    }

    public int id() { return id; }
    public String description() { return description; }
    public boolean completed() { return completed; }

    // equals(), hashCode(), toString() are auto-generated
}
```

## What You Cannot Do with Records

- You can’t have mutable fields.

- You can’t extend other classes (but you can implement interfaces).

- You can’t define setters.

## Benefits
- Less boilerplate.

- More readable and compact.

- Built-in immutability.

- Good for DTOs(Data Transfer Objects), configuration models, return types, etc.