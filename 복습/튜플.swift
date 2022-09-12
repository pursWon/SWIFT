import Foundation

var array: [(age: Int, name: String)] = [(39, "a"), (5, "b"), (72, "c")]

var arrayAge = [array[0].age, array[1].age, array[2].age].sorted(by: <)

var a = arrayAge.map { String($0) }
print(a)

var people: [(name: String, age: Int)] = [("김민준", 10), ("이서준", 20)]
