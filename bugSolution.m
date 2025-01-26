To fix the memory leak caused by repeated string allocation, we need to ensure that the old string is released before assigning a new one.  The simplest solution is to check for a pre-existing string before allocating a new one:

```objectivec
@implementation MyClass
- (void)someMethod {
    if (self.myString) {
       self.myString = nil; // Release existing string
    }
    self.myString = [NSString stringWithFormat:@"Hello, world!"];
}
@end
```

Alternatively, one can use string mutability to avoid creating multiple string objects.  However, this requires careful consideration of its implications.

To break the retain cycle in the delegate pattern, we introduce a `weak` property for the delegate:

```objectivec
@interface MyObject : NSObject
@property (nonatomic, weak) id <MyProtocol> delegate;
@end
```

By making the `delegate` property `weak`, `MyObject` no longer retains its delegate.  This breaks the retain cycle, allowing both objects to be deallocated correctly.  It's crucial to understand that a `weak` property can become `nil` at any time if the object it references is deallocated.