import Foundation

func solution(_ sides:[Int]) -> Int {
    // 배열에서 가장 큰 값을 구하고
    let maxValue = sides.max()!
    // 배열 전체 핪에서 가장 큰값빼기
    let total = sides.reduce(0, +)
    let rest = total - maxValue
    // 그 합이 큰값보다 작으면 1, 크거나 같으면 2로 return
    if maxValue < rest {
        return 1
    } else {
        return 2
    }
}