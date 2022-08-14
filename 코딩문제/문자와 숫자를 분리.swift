func numberCheck(numbers: String) {

    let numberArray: [Character] = Array(numbers)

    var check: Bool = true // 초기값을 지정해줌.
    for character in numberArray {
        check = character.isNumber // numberArray의 문자(a)를 하나하나를 다 숫자인지 체크한다.
        // numberArray의 모든 character이 다 숫자인지 보는 것이므로 모두 숫자여야 true가 나온다.
    }
    print(check) // 모두 숫자일 경우, true. 하나라도 문자가 있을 경우, false.
}

numberCheck(numbers: "45389190")
