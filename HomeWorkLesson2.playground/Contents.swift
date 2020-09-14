import UIKit

var str = "Hello, playground"
// 1. Проинициализируйте константы типа Int, Double, String, Bool, не задавая тип явно
let integer = 5
let double = 3.5
let string = "Swift"
let bool = false
// 2. Проинициализируйте переменные типа Int, Double, String, Bool, явно задав тип
var integer1: Int = 6
var double1: Double = 4.7
var string1: String = "Lesson"
var bool1: Bool = true

// 3. Проинициализируйте переменную типа Int со значением, равным сумме созданной константе и переменной в п.1-2
var sumInt = integer + integer1

// 4. Задайте новое значение переменной, созданной в п.3, равное произведению константы из п.1 и переменной из п.2
var sumint = integer * integer1
// 5. Объявите(не инициализируя) переменные типов Int, Double, String
var integer2: Int
var double2: Double
var string2: String

// 6. Проинициализируйте переменную типа Bool с результатом сравнения константы из п.1 и переменной из п.2
var bool2 = integer == integer1

//7. Проинициализируйте переменую типа String с каким-либо значением
var string3 = "Name"

// 8. Взять модуль из переменной типа Int, реализовать округление переменной типа Double
var mod = -5
print (abs(mod))

var rounding = 5.6757
print (round(rounding))
print (round( rounding * 1000) / 1000)
