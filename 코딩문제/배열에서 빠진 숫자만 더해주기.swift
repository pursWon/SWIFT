import Cocoa

// 배열에서 빠진 숫자만 더해주는 함수 만들어주기

let numbers: [Int] = [1, 3, 5, 7, 9, 11, 13]
var count: Int = 0
var different: [Int] = []

func calculate(array: Int...) {
    
    for number in numbers {
        if array.contains(number) == false {
            different.append(number)
        }
    }
    
    for differentNumber in different {
        count += differentNumber
    }
    
    print(count)
}

calculate(array: 1, 3, 7, 11, 13)
