import UIKit

/***   local parameter  ***/
func hello(name: String) {
    print("Hello \(name)")
}
//cara mengakses
hello(name: "Arenasharing.com")

/***   eksternal parameter  ***/
func helloWorld(name person: String) {
    print("Hello world \(person)")
}
//cara mengakses
helloWorld(name: "Arenasharing.com")


/***   variadic parameter  ***/
func variadic(_ numbers: Int...) -> Int {
    var total: Int = 0
    for number in numbers {
        total += number
    }
    return total
}
//cara mengakses
let total = variadic(1, 1, 12)
print("total = \(total)")

func numbers<T>(data: T...) {
    for i in data {
        print(i)
    }
}
//cara mengakses
numbers(data: 1, 2, 3, 4, 5, 6)
numbers(data: 1.1, 1.2, 1.3, 1.4, 1.5, 1.6)
numbers(data: "One", "Two", "Three", "Four", "Five", "Six")

/***   I/O parameter  ***/
func swapNumber(a: inout Int, b: inout Int) {
    let temp = a
    a = b
    b = temp
}
//cara mengakses
var number1 = 10, number2 = 20
swap(&number1, &number2)
print("number 1 = \(number1)")
print("number 2 = \(number2)")


/***   Function Type  ***/
func multiply(a: Int, b: Int) -> Int {
    return a * b
}

var multi: (Int, Int) -> Int = multiply

//cara mengakses
let result = multi(10, 30)
print("result function type = \(result)")

/***   Function Type  as parameter  ***/
func calculate(multiply: (Int, Int) -> Int, a: Int, b: Int) {
    let result = multiply(a, b)
    print("result Function Type  as parameter = \(result)")
}
calculate(multiply: multi, a: 3, b: 5)
