# Java Annotations

## Definition
An annotation is `metadata` attached to code.

## Why was it introduced?
Annotations were introduced in 2004 to reduce XML configurations.

## Why do we need configurations?
A configuration is `data or a setting`.
Configurations are used to:
- Toggle features, ex: `app.theme = "dark"`
- Change databases, ex: shifting from `MySQL` to `Postgres`
- Disable features, ex: `app.signUp = false`

## Disadvantages of configurations
- Hard to read and refactor
- Verbose

## What problem do annotations solve?
- Reduce configurations
- Easier to read and refactor
- Code becomes self-documented
- Frameworks like Spring can add behavior

## Custom Annotations
Java allows us to define our own annotations using the `@interface` keyword.

### Example:
```java
import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Loggable {
}
```

### Usage:
```java
@Loggable
public void serve() {
    // some logic
}
```

Custom annotations are useful in frameworks (like Spring) for:
- Logging
- Validation
- Security
- AOP (Aspect-Oriented Programming)

## Early Spring (Before Annotations)
Before annotations, Spring relied heavily on XML files to configure beans and their dependencies.

### Example:
```xml
<bean id="myService" class="com.example.MyService">
    <property name="repository" ref="myRepo"/>
</bean>
```

This approach was:
- Verbose and repetitive
- Separate from actual Java code
- Harder to manage in large projects

Annotations were introduced to simplify configuration by bringing it closer to the codebase.
