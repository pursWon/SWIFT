import Foundation

func number(numbers: [Int]) -> [Int] {

var intArray : [Int] = []
    for a in numbers {
        intArray.append(a * a)
    }
    return intArray
}
let results = number(numbers: [20, 10, 16])

print(results)
