func solution(_ n:Int) -> Int {
    if n == 0 { return 0 }
    
    var result: Int = 0

    for i in 1...n {
        if n % i == 0 {
            result += i
        }
    }
    return result
}