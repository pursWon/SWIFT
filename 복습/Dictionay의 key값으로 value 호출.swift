import Foundation

var fruit: [String : Int] = ["apple": 3000, "melon": 4500, "pineapple": 6700]

print(fruit["apple"]!) // 3000

let fruitTwo: [Int] = [fruit["apple"]!, fruit["melon"]!, fruit["pineapple"]!]
print(fruitTwo) // [3000, 4500, 6700]

print(fruit.keys.sorted()) // ["apple", "melon", "pineapple"]
print(fruit.values) // [4500, 6700, 3000]
