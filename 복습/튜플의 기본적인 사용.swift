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

// <Naming Index>

var namedTuple = (name: "Bill", age: 30, likes : ["Swift", "iOS"])
print(namedTuple.name) // Bill
print(namedTuple.age) // 30
print(namedTuple.likes) // [“Swift”,"iOS"]

namedTuple.name = "Joyce" // name을 다른 값으로 변경 가능
print(namedTuple.name) // Joyce

// <튜플 타입>

// 입력하는 데이터 타입에는 제한이 없으며 튜플 타입도 저장이 가능하다.
var anotherTuple = (1, (tuple)) 
print(anotherTuple.0) // 1
print(anotherTuple.1.0) // Bill

// <Function Type>

// 튜플은 아래와 같이 함수 타입(Function Type) 또한 저장 가능합니다.

func a() -> Int { return 1 }
func b() -> String { return "Bill" }
func c() -> Bool { return false }

var functionTuple = (a(), b(), c())

print(functionTuple.0) // 1
print(functionTuple.1) // Bill
print(functionTuple.2) // false
