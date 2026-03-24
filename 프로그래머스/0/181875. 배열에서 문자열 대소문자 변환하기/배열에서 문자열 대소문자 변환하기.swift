import Foundation

func solution(_ strArr:[String]) -> [String] {
    var result: [String] = []
    
    for (i, str) in strArr.enumerated() {
        if i % 2 == 0 {
            // 짝수번째 인덱스는 모두 소문자
            result.append(str.lowercased())
        } else {
            // 홀수번째 인덱스는 모두 대문자
            result.append(str.uppercased())
        }
    }
    
    return result
}