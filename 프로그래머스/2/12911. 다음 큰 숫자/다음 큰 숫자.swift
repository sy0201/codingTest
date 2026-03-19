import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    // n을 2진수 문자열로 변환
    let binary = String(n, radix: 2)
    
    // 문자열로 변환한 n의 1의 개수 세기
    let binaryCount = binary.filter { $0 == "1" }.count
    
    // n과 1의 개수가 같은 다음 숫자 찾기
    var next = n + 1
    while String(next, radix: 2).filter { $0 == "1" }.count != binaryCount {
        next += 1
    }
    answer = next
    return answer
}