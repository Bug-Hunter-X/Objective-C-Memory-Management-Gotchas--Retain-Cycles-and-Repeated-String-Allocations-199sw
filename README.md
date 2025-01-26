# Objective-C Memory Management Pitfalls

This repository demonstrates two common memory management issues in Objective-C that often trip up developers, even experienced ones.  The examples illustrate how improper use of strong properties and delegate patterns can lead to retain cycles and unexpected memory consumption.

## Issues Addressed:

* **Repeated String Allocation:** The `bug.m` file shows how repeatedly calling a method that allocates a new string without releasing the old one results in a memory leak.
* **Retain Cycles with Delegates:** The `bug.m` file further demonstrates a classic retain cycle scenario involving a delegate pattern. The `MyObject` and `MyDelegate` classes create a strong reference loop, preventing either object from being deallocated.

## Solutions:

The `bugSolution.m` file provides corrected versions of the code, demonstrating best practices for addressing both problems.  These solutions emphasize:

* **Careful use of strong and weak properties:** Utilizing `weak` properties to prevent retain cycles is crucial.
* **Understanding property semantics:** Knowing the differences between `strong`, `weak`, `assign`, and `copy` is essential for correct memory management.
* **Proper delegate management:** Using appropriate property types to manage delegates. 

This repository serves as a valuable learning resource for anyone working with Objective-C and memory management.  By understanding these common errors and their solutions, you can build more robust and stable applications.