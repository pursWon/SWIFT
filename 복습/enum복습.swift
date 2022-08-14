import Foundation

// enum 문에 관하여

enum Direction: Int { // 열거형은 케이스들을 나열해 놓은 것을 하나의 묶음으로 관리하는 타입이다. 열거형은 동등한 위치에 있다.
    case west = 10 // 숫자를 원시값으로 지정해줄 경우에 다음 숫자는 하나씩 증가하게 된다.
    case east // 원시값 11
    case north // 원시값 12
    case south // 원시값 13
}

var direction: Direction = .south // south
print(direction.rawValue) // 13

print("\(direction): \(direction.rawValue)") // south: 13

switch direction { // switch문과 enum문은 조합이 잘 맞는다. 섞어서 쓰기가 가능하면 enum문안에 적힌 케이스만 적으면 되므로 default 값이 없어도 된다.
case .west: // 점문법을 통해 모든 방향에 접근 가능
    print("서쪽: \(direction.rawValue)")
case .east:
    print("동쪽: \(direction.rawValue)")
case .north:
    print("북쪽: \(direction.rawValue)")
case .south:
    print("서쪽: \(direction.rawValue)")
}

enum Coffee: String {
    case mocha = "sweet"
    case americano = "no sweet"
    case milktea = "a little sweet"
}

var myType: Coffee = .milktea

switch myType {
case .mocha:
    print("내 취향은 \(myType.rawValue)")
case .americano:
    print("내 취향은 \(myType.rawValue)")
case .milktea:
    print("내 취향은 \(myType.rawValue)")
}

// Optional 타입

// optional은 둘 중 하나이다. 값이 들어있거나, 들어있지 않거나(nil)

let optionalValue: Int? = Int("a") // 옵셔널 타입을 쓰고 싶다면 타입 옆에 ?를 붙인다.
print(optionalValue) // 우리는 14가 optioanlValue에 들어간 것을 알지만 컴퓨터는 모르는 상태이다. 따라서, 옵셔녈 상태를 가진다.

if let value = optionalValue, value == 14 { // 벗긴 optionalValue의 값을 value에 대입하고, 두 개의 값이 같은지 확인하고 value의 값이 14가 맞는지 확인한다.
    print("\(value)와 14는 같다.") // 두 조건이 모두 맞을 경우, 다음 문장을 출력한다.
} else {
    print("두 개의 값은 다르다.") // 두 조건중 하나라도 틀릴 경우, 다음 문장을 출력한다.
}

print(optionalValue ?? 33) // optionalValue의 값이 nil일 경우 숫자 33을 대신 대입한다.

func optionalTest() {
    
    let letter: String? = String("MOON")
    
    print(letter) // Optional("MOON")
    
    print("함수 시작 !")
    
    if let night = letter, night == "MOON" {
        print("밤에 달이 떴습니다")
    } else {
        print("달이 뜨지 않았군요")
    }
    
    print(1) // if let 문의 영향은 if let문 안에서만 끼치므로 거짓이어도 밑의 프린트 1, 3, 5는 출력이 된다.
    print(3)
    print(5)
    
    print("함수 끝 !")
}

optionalTest()

func guardTest() -> String { // 함수 전달 x, 반환 o
    print("함수 시작!")
    
    let twice: Int? = Int(12) // Optional(12)
    
    guard let number = twice, number == 12 else { return "종료" } // number에 벗겨진 twice의 값을 넣어준다. 그리고 12와 같은지 비교한다.
    // 두 조건이 모두 충족될 경우, 1,3,5 를 모두 프린트해주고 return 값을 프린트해준다.
    // 두 조건 중 하나라도 충족이 되지 않을 경우, else문을 출력하고 그대로 함수를 종료한다.
    
    print(1)
    print(3)
    print(5)
    
    return "number와 twice는 같다~~~" // 반환 타입이 String이므로 문자열로 적어주었다.
    
}

print(guardTest()) // "number와 twice는 같다~~~"가 출력된다.

func movie(name: String, genre: String) -> Int {
    
    guard let movies = movieName else { return 300 }
    
    return 800
}

let movieName: Int? = movie(name: "TopGun", genre: "Action")

print(movieName) // 800

// Struct (구조체)

struct Human { // 구조체 선언
    
    var name: String // 프로퍼티 name 선언
    var age: Int // 프로퍼티 age 선언
    let gender: String // 프로퍼티 gender 선언
    
}

let 영수: Human = Human(name: "영수", age: 25, gender: "남자")

print(영수.age) // 25

var 복제영수 = 영수 // 영수를 변수 복제영수로 복사시켰다.

복제영수.name = "복제영수" // 프로퍼티 name을 변경
복제영수.age = 21 // 프로퍼티 age를 변경

print(영수.name) // 영수
print(복제영수.name) // 복제영수
// struct는 복제가 되므로 복제영수는 새로운 독립체로서 프로퍼티를 변경하는 것이 가능하고 기존의 상수인 영수에 영향을 받지 않는다.

class Singer {
    
    var name: String
    let age: Int
    let gender: String
    
    init(name: String, age: Int, gender: String) {
        
        self.name = name
        self.age = age
        self.gender = gender
    }
}

var DEAN: Singer = Singer(name: "DEAN", age: 30, gender: "Man")

var ZICO = DEAN

ZICO.name = "ZICO"

print(DEAN.name)
