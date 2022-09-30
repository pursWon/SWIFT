import Cocoa

// 로또 만들기

func yourLotto(yourNumbers: [Int]) {
    
    var countOne: Int = 0
    var todayLotto: [Int] = []
    
    while countOne <= 5 {
        let lottoNumber: Int = Int.random(in: 1...100)
        
        countOne += 1
        todayLotto.append(lottoNumber)
    }
    
    print("오늘의 로또번호 6자리는 \(todayLotto)입니다.")
    
    var countTwo: Int = 0
    
    for lottoNumber in todayLotto {
        for yourNumber in yourNumbers {
            if lottoNumber == yourNumber {
                countTwo += 1
            }
        }
    }
    
    if countTwo == 0 {
        print("저런! 꽝이군요! 직장으로 돌아가셔야 합니다.")
    } else if countTwo == 1 {
        print("한 개가 당첨됐습니다. 축하드립니다!")
    } else if countTwo == 2 {
        print("두 개가 당첨됐습니다. 축하드립니다!")
    } else if countTwo == 3 {
        print("세 개 당첨이시군요! 100만원의 상금 축하드립니다!")
    } else if countTwo == 4 {
        print("네 개 당첨이시군요! 200만원의 상금 축하드립니다!")
    } else if countTwo == 5 {
        print("다섯 개 당첨이시군요! 500만원의 상금 축하드립니다!")
    } else if countTwo == 6 {
        print("퍼펙트하군요! 100억원의 상금 축하드립니다!")
    }
}

yourLotto(yourNumbers: [4, 87, 11, 7, 9, 15]) // 로또 번호 여섯 자리를 입력하세요 !
