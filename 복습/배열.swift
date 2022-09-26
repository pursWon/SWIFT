import Foundation


// 일반적인 배열의 형태
let arrayOne: [Int] = [1, 3, 5, 7]

let arrayTwo: [String] = ["One", "Two"]

// 배열은 빈 형태를 가질수도 있다.
let arrayThree: [Character] = []

let arrayFour: [Int] = []

// 초기화 된 배열의 값을 설정할 수 있다.
let arrayRepeating = Array(repeating: 3.1, count: 4)
print(arrayRepeating)

// 배열의 모든 원소에 대하여 작업을 하여야 하는 경우 for - in문을 사용한다.
for number in arrayOne {
    print("arrayOne 배열은 \(number)를 가지고 있다.")
}

// isEmpty문을 사용하여 배열이 비었는지를 확인할 수 있다.
if arrayThree.isEmpty {
    print("arrayThree는 비었습니다.")
} else {
    print("arrayThree는 \(arrayThree.count)만큼의 수를 가지고 있습니다.")
} // [arrayThree는 비었습니다.]

if let firstElement = arrayOne.first {
    print([firstElement])
} // [1]

// append를 통해서 배열의 원소를 추가할 수 있다.

var students: [String] = ["Ben", "Jang", "Max", "Bryan"]

students.append("hong") // append(_:)를 이용하면 단일 요소를 추가할 수 있다.
print(students) // ["Ben", "Jang", "Max", "Bryan", "hong"]

students.append(contentsOf: ["Villa", "Lahm"]) // append(contentsOf:)를 이용하면 여러 요소를 추가할 수 있다.
print(students) // ["Ben", "Jang", "Max", "Bryan", "hong", "Villa", "Lahm"]

// remove를 통해 베열의 원소를 제거할 수 있다.

students.remove(at: 1)
print(students) // "Jang"이 없어짐

students.removeAll() // 원소를 모두 제거
print(students) // []


// 배열의 사본을 수정
var numbers: [Int] = [1, 2, 3, 4, 5, 6]

var numbersTwo: [Int] = numbers

numbers[0] = 210
numbers[2] = 300
numbers[4] = 14

print(numbers) // [210, 2, 300, 4, 14, 6]
print(numbersTwo) // [1, 2, 3, 4, 5, 6]
// 원래의 배열인 numbers의 값이 변경되도 복사된 배열 numbersTwo의 원소의 값은 영향을 받지 않는다.
