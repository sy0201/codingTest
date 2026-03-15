import Foundation

func solution(_ s:String) -> [Int] {
    var current = s
    var count = 0
    var zeroCount = 0
    
    while current != "1" {
        let zeros = current.filter { $0 == "0" }.count
        zeroCount += zeros
        
        let ones = current.filter { $0 == "1"}.count
        
        current = String(ones, radix: 2)
        count += 1
    }
    
    return [count, zeroCount]
}