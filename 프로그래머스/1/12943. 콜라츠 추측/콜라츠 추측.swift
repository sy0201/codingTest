func solution(_ num:Int) -> Int {
    if num == 1 {
        return 0
    }
    
    var currentNum = Int64(num)
    var count = 0

    while currentNum != 1 {
        if currentNum % 2 == 0 {
            currentNum /= 2
        } else {
            currentNum = currentNum * 3 + 1
        }
        count += 1
        
        if count == 500 {
            return -1
        }
    }
    
    return count
}