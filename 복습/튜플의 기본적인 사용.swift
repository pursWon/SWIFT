var tuple:(String, Int, Bool) = ("Bill", 100, true)
var simpleTuple = ("Joyce", 200, false) // 추론을 통한 데이터 타입을 생략
        
print(tuple.0) // Bill
print(simpleTuple.0) // Joyce

var (name, index, isMan) = tuple // 튜플의 값들에 변수나 상수에도 넣을 수 있다.
print("이름 : \(name)") // 이름 : Bill

var tupleArr = [(1, "Hello, world!", true) ,(2, "Hello, world!",false)]
        
// 튜플 배열에 대해서 아래와 같이 loop를 돌 수 있습니다.

for index in tupleArr {
    print(index.0) // 1 2
    print(index.1) // "Hello, world!" "Hello, world!"
    print(index.2) // true false
}
