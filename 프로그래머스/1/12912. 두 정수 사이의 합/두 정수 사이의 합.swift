func solution(_ a:Int, _ b:Int) -> Int64 {
    var result: Int64 = 0
    
    let start = min(a, b)
    let end = max(a, b)
    
    for i in start...end {
        result += Int64(i)
    }
    
    return result
}