//: Playground - noun: a place where people can play

import UIKit

// Creation of a constant variable
var myPetsAge = 5
// Creation of a non-constant variable
let myPetsName = "Princess"
/**:
Int = Whole Number both negative and positive
UInt = Whole Number can only be positive
Float = Floating point value
Double = Floating point value double the precision
Bool = True of False
String = Array of characters
Character = Single Character
Optional = can either have a value or no value

Apple Documentation

https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309

*/
let intValue = 5
let floatValue = 10.5
let doubleValue = 10.34345345435
let boolValue = true
let stringValue = "Some String Value"
let characterValue = "A"
let optionalValue:String?

/**:
Decision Making
It's common in computer programming to have our program change state.
The foundation of computer programming give us the concept of decision making in order to achieve this task.

https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120

*/
// print if value is true
if (boolValue) {
    print("bool value is true")
}
// print value is true otherwise print value is false
if (boolValue) {
    print("bool value is true")
} else {
    print("bool value is false")
}
// test for multiple conditions
if (boolValue) {
    print("bool value is true")
} else if (!boolValue) {
    print("bool value is false")
} else {
    print("no condition met")
}

if (boolValue) {
    if (characterValue == "A") {
        print("bool is true and character is A")
    } else {
        print("condition wasn't met")
    }
}

switch intValue
{
case 0:
    print("Value is 0")
    break;
case 1:
    print("Value is 1")
    break;
case 2:
    print("Value is 2")
    break;
case 3:
    print("Value is 3")
    break;
case 4:
    print("Value is 4")
    break;
case 5:
    print("Value is 5")
    break;
default:
    print("No condition met")
    break;
}

var myCollectionOfIntegers = [0,1,2,3,4,5,6,7,8,9,10]

for collection in myCollectionOfIntegers {
    print(collection)
}

for var i = 0; i < 10; i++ {
    print(i)
}

/**:
Functions
Once we have some logic we may want to put this into a function for reuse. Functions allow us to repurpose functionality into our codebases.

Apple Documentation Functions
https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html
*/

func mySimpleFunction() {
    print("my simple func")
}

func mySimpleFuncWithParameters(name:String) {
    print("my name is \(name)")
}

func mySimpleFuncThatReturnsaValue(number:Int) -> Int {
    return number
}






