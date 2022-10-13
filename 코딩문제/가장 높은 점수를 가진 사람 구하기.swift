import Foundation

var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]
print(studentsAndScores.endIndex)
func highestScore(scores: [String: Int]) {
    guard let highest = scores.values.max() else {
        return
    }
    print("셋 중 가장 높은 사람의 점수는 \(highest)이다.")
}

highestScore(scores: studentsAndScores)

