import Cocoa

// 배열에서 빠진 숫자만 더해주는 함수 만들어주기

let numbers: [Double] = [1, 3, 5, 7, 9, 11, 13]
var count: Double = 0
var different: [Int] = []

func calculate() {
    
    for number in numbers {
       count += number
    }
    
    let answer: Double = count / Double(numbers.count)
    print(answer)
}
    
calculate()
