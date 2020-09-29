import UIKit
var str = "Hello, playground"

// 1. Описать фцнкцию принимающую 2 аргумента String (word, line), которая с помощью цикла FOR считает сколько раз данное слово встречается в строке line
func textLoop (word: String, line: String) -> Int {
    var count = 0
    var position = 0
    
    for char in line {
        guard position <= line.count - word.count else { return count }
        
        if word.first?.lowercased() == char.lowercased() {
            let firstChar = line.index(line.startIndex, offsetBy: position)
            let lastChar = line.index(line.startIndex, offsetBy: position + word.count - 1)
            let sub = line[firstChar...lastChar]
            if sub.lowercased() == word.lowercased() {
                count += 1
            }
        }
        
        position += 1
    }
    return count
}

textLoop(word: "keyboard", line: "Compatible with Magic Keyboard and Smart Keyboard Folio")

// 2. Написать алгоритм с помощью цикла DO-WHILE который добавляет в массив [Int] элементы (можно одинаковые, можно рандомные) до тех пор, пока сумма элементов массива меньше 100
var arrayIntNumbers: Array<Int> = []
var sum: Int = 0
repeat {
    sum = 0
    arrayIntNumbers.append(Int.random(in: 2...10))
    for i in arrayIntNumbers {
        sum += i
    }
} while sum < 100
print(sum)

// 3. Написать 1 алгоритм сортировки элементов массива [Int]

func bubbleSort(array: Array<Int>) -> Array<Int> {
    var sortedArray = array
    for i in 0 ..< sortedArray.count {
        for j in 0 ..< (sortedArray.count - 1) - i {
            if sortedArray[j] > sortedArray[j+1] {
                let temp = sortedArray[j]
                sortedArray[j] = sortedArray[j + 1]
                sortedArray[j+1] = temp
            }
        }

    }
    return sortedArray
}

print(bubbleSort(array: [4,3,2,1]))


