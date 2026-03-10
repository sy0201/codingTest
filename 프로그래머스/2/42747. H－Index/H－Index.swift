import Foundation

func solution(_ citations:[Int]) -> Int {
    var result = 0
    
    for h in 0...citations.count {
        
        let count = citations.filter({ $0 >= h }).count
        if count >= h {
            result = h
        }
    }
    
    return result
}