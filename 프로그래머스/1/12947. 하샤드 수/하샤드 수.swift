func solution(_ x:Int) -> Bool {
    let characters = Array(String(x))
    
    var digitSum = 0
    
    for char in characters {
        if let digit = char.wholeNumberValue {
            digitSum += digit
        }
    }
    
    return x % digitSum == 0
}