import Foundation

func Calculate(array: [Int]) -> Double { // 함수 calculate 선언
    
    var count: Double = 0 // 변수 count는 0이다. 소수점도 나와야 하므로 Double을 사용
    
    for a in 0..<array.count { // a는 array 배열이 가지고 있는 모든 숫자를 순회한다.
        count += Double(array[a]) // 0부터 array가 a번째에 가지고 있는 숫자를 반복하면서 더할 것이다.
    }
    
    return count / Double(array.count) // array의 멤버 값들을 모두 합한 count에 array의 멤버 개수를 나눠줄 것이다. (평균)
    // 평균값을 반환해준다.
}


print(Calculate(array: [3, 9, 19, 11])) // array에 숫자를 입력해준다.
// 답은 평균값 10.5가 나온다.
