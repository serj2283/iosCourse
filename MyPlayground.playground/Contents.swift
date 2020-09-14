import UIKit

var str = "Hello, playground"
import UIKit
// what is a SCOPE?
var variable: Int = 0


var variable1 = 0
var variable2 = variable1
variable1 = 1
variable2

var boolean = true
var oppositeBoolen = !boolean



let x: Int = 10

print("We have got \(x) cakes")
var name = "John"
name = "James"


let defaultScore = 100
var playerOneScore = defaultScore
var playerTwoScore = defaultScore
print(playerOneScore)
print(playerTwoScore)
playerOneScore = 200
print(playerOneScore)



struct Person {
  let firstName: String
  let lastName: String

  func sayHello() {
    print("Hello there! My name is \(firstName) \(lastName).")
  }
}

let aPerson = Person(firstName: "Jacob", lastName: "Edwards")
let anotherPerson = Person(firstName: "Candace", lastName:
"Salinas")

aPerson.sayHello()
anotherPerson.sayHello()

struct PersonTwo {
    let firstName1: String
    let lastName1: String

    func sayHelloTwo(){
        print("Hello there!! My name is \(firstName1) \(lastName1).")
    }
}
let aPerson1 = PersonTwo(firstName1: "Iliya", lastName1: "Yakovicky")

aPerson1.sayHelloTwo()
anotherPerson.sayHello()

let cookies = [Cookie(.chokolate), Cookie(.peanutButter), Cookie(.blackAndWhite) ]




