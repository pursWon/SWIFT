import Foundation

func 로또() {
    let winNumbers: [Int] = [3, 9, 11, 18, 25]
    print("당첨번호는 \(winNumbers)이다")
    
    var yourNumbers: [Int] = []
    
    var count1: Int = 0
    var count2: Int = 0
    
    while true {
        let lottoNumbers: Int = Int.random(in: 1...30)
        yourNumbers.append(lottoNumbers)
        count1 += 1
        if count1 == 5 {
            break
        }
        
    }
    print("당신은 복권번호는 \(yourNumbers)")
    
    for a in winNumbers {
        for b in yourNumbers {
            
            if a == b {
                count2 += 1
            }
        }
    }
    switch count2 {
    case 0:
        print("당첨된게 없다")
    case 1:
        print("1개 당첨")
    case 2:
        print("2개 당첨")
    case 3:
        print("3개 당첨")
    case 4:
        print("4개 당첨")
    case 5:
        print("모두 당첨")
    default:
        break
    }
    
    
}

로또() // 함수만 실행시키면 로또 프로그램이 작동한다.
