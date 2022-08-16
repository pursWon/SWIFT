import Foundation

// if문

func loveCalculator() {
    let loveScore = Int.random(in: 0...100)

    if loveScore > 80 {
        print("당신은 서로 많이 사랑합니다.")
    } else if loveScore > 40 && loveScore <= 80  {
        print("당신은 썸을 타고 있습니다.")
    } else {
        print("당신은 평생 혼자입니다..")
    }
}

loveCalculator()

// if - else문을 switch문으로 변경

func loveCalculator2() {
    let loveScore: Int = Int.random(in: 0..<101)
    print(loveScore)
    
    switch loveScore {
    
    case 81...100:
    print("당신은 서로 많이 사랑합니다.")
        
    case 41..<81:
    print("당신은 썸을 타고 있습니다")
        
    default:
    print("당신은 평생 혼자입니다.")
        
    }
   
}

loveCalculator2()

// enum과 switch문은 같이 쓰기에 좋다.

enum Menu {
    case 냉면
    case 김치찌개
    case 불고기
}

let lunchMenu: Menu = .불고기

switch lunchMenu {
case .냉면:
print("냉면이나 먹자")
case .김치찌개:
print("김치찌개나 먹자")
case .불고기:
print("불고기나 먹자")
case _: // default와 같은 표현
print("아무거나 먹자")
}

// switch문에 where문을 같이 사용

let number: Int = 100

switch number {
case 1..<102 where number % 3 == 0 : // 다음과 같이 조건을 추가하여 사용할 수 있다.
    print("약수를 3으로 가진다.")
case 50..<102 where number % 25 == 0 :
    print("약수를 25로 가진다.")
case _:
    break
}
