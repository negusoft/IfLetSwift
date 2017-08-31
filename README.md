Swift Optional extension to simplify conditional expresions in some cases.

Let's say we have the following code:

``` swift
let optionalInt: Int? = ???
let description: String
if let amount = optionalInt {
    description = "\(amount) items"
} else {
    description = "no items"
}
print(description)
```

We can write the same code using IfLetSwift:

``` swift
let description = optionalInt.ifLet { "\($0) items" } ?? "no items"
print(description)
```

So it provides a consise and readable expression.

## Setup

### CocoaPods

Make sure that you are using the latest [CocoaPods](http://cocoapods.org) version.

Add the following line to your podfile:

```ruby
pod 'IfLetSwift'
```

Don't forget to update your pods and open the generated _xcworkspace_ file:

```bash
$ pod install
```

You will also need to import the module in order to use the extension methods:

```swift
import IfLetSwift
```

### Other

The library is actually a single file so you might simply copy _Optional+IfLetSwift.swift_ to your project.

## Usage

The library provides two extension methods that can be called on optional values.
- **ifLet**: Receives a closure that will be called only if the optional has a value, the closure is passed the actual value. Returns the value returned by the closure or nil.
- **elseDo**: Receives a closure with no arguments that is called only if the optional is nil. It is usually chained after _ifLet_

Please have a look at _IfLetSwift.playground_ for samples on how to use these methods.

## License

IfLetSwift is released under the MIT license. See LICENSE for details.