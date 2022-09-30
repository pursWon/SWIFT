// 숫자의 "순번"를 무작위로 골라서 빈 배열에 놓을 것이다. 해당 순번의 숫자를 switch 문을 통해 결과를 출력하여라.

let numberArray: [Int] = [99, 21, 7, 68, 3, 77, 91, 1, 13, 9]
let randomOrder = numberArray[Int.random(in: 0...9)]

switch randomOrder {
case 0..<10:
    print("0과 10사이의 숫자")
case 10..<30:
    print("10과 30사이의 숫자")
case 60...80:
    print("60과 80사이의 숫자")
case 90...100:
    print("90과 100사이의 숫자")
default:
    print("해당 없음")
}

print(randomOrder)
