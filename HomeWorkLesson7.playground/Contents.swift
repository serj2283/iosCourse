//import UIKit
//
//var str = "Hello, playground"
//
////Functions
////Define
//func functionName (id index: Int, param2: Double) -> Int {
//    //body of the function
//    return index
//}
//let function = functionName
//var result = functionName(id: 1, param2: 12.5)
//
//functionName(id: 1, param2: 1)
//
//
//func printOnScreen(element value: Int = 1){
//    print (value)
//}
//printOnScreen()
//func fullTank(amount: Double = 100.0){
//    
//}
//fullTank()
//class CustomType{}
//func configureInterface(config: CustomType? = nil){
//    
//}
//configureInterface()
//configureInterface(config: CustomType())
//
//
//////func color (_ red: Int? = 1, _ green: Int? = 1, _ blue: Int? = 1) -> (Int, Int, Int) {
//////    guard let red = red,
//////        let green = green,
//////        let blue = blue else {
//////            return (0, 0, 0)
//////    }
//////    return (red, green, blue)
////}
//
////inout
//
//func multiplyOnTen(value: inout Int) {
//    value *= 10
//}
//
//var givenValue = 5
//multiplyOnTen(value: &givenValue)
//givenValue
//
////var multiplyResult = multiplyOnTen(value: 5)
//
//
//func resolveString(text: inout String){
//    let placeholder = "{APP_VERSION}"
//    let version = "v0.0.1"
//    text = text.replacingOccurrences(of: placeholder, with: version)
//    
//}
//var giventext = "ljhdsbjlh {APP_VERSION} kjhadgfjh"
//resolveString(text: &giventext)
//giventext
//
//
////CLOSURES
//
//////
//////var customClosure: (Int, Double) -> Int = {
//////    (intValue, doubleValue) -> Int in
//////    print(intValue)
//////    print(doubleValue)
//////    return intValue + Int(doubleValue)
////
////}
//var customClosure: (Int, Double) -> Int = { $0 + Int($1) }
//
////func functionName (id index: Int, param2: Double) -> Int {
////    return index
////}
//var customClosuareShot: ()->() = {
//    print("Hello world")
//}
//customClosuareShot()
//let constantClosure = customClosuareShot
//constantClosure()
//
//func operation(arg1: Int, arg2: Int, closure: (Int, Int) -> Void) {
//    closure(arg1, arg2)
//}
//let handler1: (Int, Int) -> Void = {
//    print($0 * $1)
//}
//operation(arg1: 5, arg2: 5, closure: handler1)
//operation(arg1: 7, arg2: 7, closure: { (arg1, arg2) in
//    print (arg1 + arg2)
//})
//
//operation(arg1: 12, arg2: 12) {
//    print($0 * $1)
//}
//
//
//var array = [1, 2, 3]
//array.reduce(0) {(results, intValue) -> Int in
//    results + intValue
//}
//
//array.reduce(0, +)
//
//
////: ### Homework:
////1. Write a Swift program to check if two given arrays of integers have 0 as their first element.
////произвести проверку двух массивов(Int) являются ли их первые элементы нулями и вывести соответствующее сообщение в консоль.
//func firstZero(_ a: [Int], _ b: [Int]) -> Bool{
//    var ctr = 0
//    if a.first == 0 {
//        ctr += 1    }
//    if b.first == 0 {
//        ctr += 1
//    }
//    if ctr == 2{
//        return true
//    }
//    else {
//        return false
//    }
//}
//print(firstZero([0, 2, 4], [0, 3, 5]))
//print(firstZero([0, 4, 7], [1, 0, 4]))
//
////2. Write a Swift program to test if an array of integers does not contain a 3 or a 5.
////произвести проверку двух массивов(Int) на отсутствие в них элементов 3 и 5 и вывести соответствующее сообщение в консоль
//
//func no35 (_ c: [Int])-> Bool{
//    if c.contains(3) || c.contains(5){
//        return false
//    } else {
//        return true
//    }
//}
//print(no35([2, 5]))
//print(no35([2, 3, 5]))
//print(no35([2, 4, 7]))
//
////3. Write a Swift program to check whether the first element and the last element of a given array of integers are equal.
////произвести проверку одинаковы ли первый и последний элементы данного массива(Int) и вывести соответствующее сообщение в консоль
//func checkFirstLast(_ element: [Int]) -> Bool {
//    guard element.count > 0 else {
//       return false
//    }
//    if element.first == element.last{
//        return true
//    } else{
//        return false
//    }
//}
//print(checkFirstLast([1, 3, 5, 1]))
//print(checkFirstLast([3, 4, 3, 5]))
//
////4. Write a Swift program that creates Array, adds an item, remove item, modify item and then prints size of the array.
////проинициализировать массив, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер массива(количество элементов)
//
//var creatArray = [33, 54, 67, 35]
//creatArray.insert(65, at: 4)
//print(creatArray)
//let remoweArr = creatArray.remove(at: 0)
//print(creatArray)
//print(creatArray.count)
//
////5. Write a Swift program that creates Dictionary, adds an item, remove item, modify item and then prints size of the Dictionary.
////проинициализировать словарь, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер словаря(количество элементов)
//
//var someDictionary = ["Audi":"A6", "BMW":"730", "Mercedes":"S500"]
//someDictionary["Lexus"] = "LS460"
//print(someDictionary)
//someDictionary["BMW"] = "530"
//print(someDictionary)
//let val  = someDictionary.removeValue(forKey: "BMW")
//print(someDictionary)
//print(someDictionary.count)
//
////6. Write a Swift program that creates Set, adds an item and then prints size of the Set.
//////проинициализировать Сет, добавить в него элемент и вывести в консоль размер Сета(количество элементов)
//
//var intSet:Set = [1]
//intSet.insert (2)
//intSet.insert (5)
//print(intSet)
//print(intSet.count)
//
////7. Create 2 arrays, and merge them.
////проинициализировать 2 массива и объединить(можно в новом массиве)
//
//var firstArray = [1, 2, 3, 4, 5]
//var secondArray = [6, 7, 8, 9, 10]
//firstArray.append(contentsOf:secondArray)
//
////8. Write a closure to sum 2 integers, pass closure as argument to function, where return the result of calling that closure.
////Написать замыкание(closure), задача которого складывать 2 полученных аргумента типа Int и вернуть его и вывести в консоль.
//
//let closure1: (Int, Int) -> Int = {$0 + $1}
//let firstNumber = 5
//let secondNumber = 6
//let addResult = closure1(firstNumber, secondNumber)
//
////9. Подготовить примеры:
////array.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)
//
//let mapArray = [1, 2, 3, 4, 5]
//
//func timesTen(_ x:Int) -> Int {
//    return x * 10
//}
//let resultArray = mapArray.map (timesTen)
//print(resultArray)
//
//
//let mapArray1 = [1, 2, 3, 4, 5]
//let resultArray1 = mapArray1.map { $0 + 10 }
//print(resultArray1)
//
//// array.filter(<#T##isIncluded: (Int) throws -> Bool##(Int) throws -> Bool#>)
//
//let filterArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//let evenArray = filterArray.filter{$0 % 2 == 0}
//print(evenArray)
