import Foundation

let hello: String = "H17OLA21"

var helloCharacters: [Character] = []

for b in hello {
    helloCharacters.append(b)
}

var characters: [Character] = []
var numbers: [Character] = []

for c in helloCharacters {
    if c.isLetter {
        characters.append(c)
    } else {
        numbers.append(c)
    }
}

print(String(characters)) // 결과물 : HOLA
print(String(numbers)) // 숫자 : 1721
