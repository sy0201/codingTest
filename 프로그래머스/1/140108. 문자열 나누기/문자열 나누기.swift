import Foundation

func solution(_ s:String) -> Int {
    var answer = 0
    var firstChar: Character? = nil
    var sameCount = 0
    var differentCount = 0
    
    for char in s {
        if firstChar == nil {
            firstChar = char
            sameCount = 1
            continue
        }
        
        if firstChar == char {
            sameCount += 1
        } else {
            differentCount += 1
        }
        
        if sameCount == differentCount {
            answer += 1
            firstChar = nil
            sameCount = 0
            differentCount = 0
        }
    }
    
    if firstChar != nil {
        answer += 1
    }
    
    return answer
}