import Foundation

// Please answer O or X

    
var question1 = "당신은 소수의 인원과 친밀한 관계를 유지하는 것을 선호합니까?"
print(question1)

var answer1 = readLine()!


var question2 = "당신은 주변에서 조용하고 신중하다는 평가를 받는 편입니까?"
print(question2)

var answer2 = readLine()!


var question3 = "당신은 자신만의 가치관이 뚜렷한 편입니까?"
print(question3)

var answer3 = readLine()!

var answer: [String] = [answer1, answer2, answer3]

// 첫번째 방법
//var count: Int = 0
//for ans in answer {
//    if ans == "O" {
//    count += 1
//}
//
//}
//
//if count ==  0 {
//    print("0개의 O를 택한 당신은 명백한 E 입니다!")
//} else if count == 1 {
//    print("1개를 택한 당신은 어느쪽에도 치우치지 않아 아직 더 조사가 필요합니다")
//} else if count == 2{
//    print("2개를 택한 당신은 어느쪽에도 치우치지 않아 아직 더 조사가 필요합니다")
//} else {
//    print("3개 모두 O를 택한 당신은 명백한 I 입니다!")
//}

// 두번째 방법
var oCount: Int = 0

answer.forEach { aim in
    if aim == "O" {
    oCount += 1
  }
}

switch oCount {
case 0:
    print("0개의 O를 택한 당신은 명백한 E 입니다!")
case 1:
    print("1개를 택한 당신은 어느쪽에도 치우치지 않아 아직 더 조사가 필요합니다")
case 2:
    print("2개를 택한 당신은 어느쪽에도 치우치지 않아 아직 더 조사가 필요합니다")
case 3:
    print("3개 모두 O를 택한 당신은 명백한 I 입니다!")
default:
    break
}
