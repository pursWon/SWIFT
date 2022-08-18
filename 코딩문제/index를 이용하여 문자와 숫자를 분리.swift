import Foundation

func 안녕() {
    
    let hello: String = "ho12la34"
    print(hello)
    // hello에서 문자를 분리
    let character1 = hello[hello.index(hello.startIndex, offsetBy: 0)...hello.index(hello.startIndex, offsetBy: 1)]
    let character2 = hello[hello.index(hello.startIndex, offsetBy: 4)...hello.index(hello.startIndex, offsetBy: 5)]
    
    let characters = [character1 + character2]
    print(characters)
    
    // hello에서 숫자를 분리
    let number1 = hello[hello.index(hello.startIndex, offsetBy: 2)...hello.index(hello.startIndex, offsetBy: 3)]
    let number2 = hello[hello.index(hello.startIndex, offsetBy: 6)...hello.index(hello.startIndex, offsetBy: 7)]
    
    let numbers = [number1 + number2]
    print(numbers)
    
}

안녕()
