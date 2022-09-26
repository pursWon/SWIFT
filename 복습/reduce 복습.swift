import Foundation

var array: [Int] = []

for number in 2..<5 {
    array.append(number)
}

var count: Int = 3 // 3이어도 변수이므로 밑의 reduce 값에 따라 변경할 수 있음

count = array.reduce(0, +)
// 0 + 2 = 2
// 2 + 3 = 5
// 5 + 4 = 9

print(count) // 9

count = array.reduce(3, *)
// 3 * 2 = 6
// 6 * 3 = 18
// 18 * 4 = 72

print(count) // 72
