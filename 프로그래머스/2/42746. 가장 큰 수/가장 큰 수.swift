import Foundation

func solution(_ numbers:[Int]) -> String {
    let stringNumbers = numbers.map { String($0) }
    
    let sortedString = stringNumbers.sorted { a, b in
        (a + b) > (b + a)
    }
    let result = sortedString.joined()
    
    if result.hasPrefix("0") {
        return "0"
    }
    
    return result
}