import Cocoa

// 옵셔널 바인딩의 기본

let a: Int? = 77
let b: Int? = nil

if let aa = a {
    print("a의 값은 존재한다.")
} else {
    print("b의 값은 존재하지 않는다.")
}

if let bb = b {
    print("b의 값은 존재한다.")
} else {
    print("b의 값은 존재하지 않는다.")
}

// 여러 옵셔널을 바인딩

let nameOne: String?
let nameTwo: String?

nameOne = "Hong"
nameTwo = "Wongi"

if let firstName = nameTwo,
    let lastName = nameOne {
    print("\(lastName) \(firstName)")
}

// guard let문

let number: Int? = 30
let character: Character? = nil

func guardLet() {
    guard let checkOne = number else { return print("number의 값은 존재하지 않는다.") }
    print(checkOne)
    
    guard let checkTwo = character else { return print("character의 값은 존재하지 않는다.") }
    print(checkTwo)
}

guardLet()
