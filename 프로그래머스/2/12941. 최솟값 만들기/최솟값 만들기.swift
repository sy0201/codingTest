import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    // 1. A를 작은순으로 정렬
    let sortedA = A.sorted()
    // 2. B를 큰순으로 정렬
    let sortedB = B.sorted(by: >)
    // 3. 같은 인덱스끼리 A[i] * B[i]
    // 4. 누적된 값 더하기
    for i in 0..<sortedA.count {
        ans = ans + sortedA[i] * sortedB[i]
    }


    return ans
}