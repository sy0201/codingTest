func solution(_ arr:[Int]) -> Double {
    var addNumber:Int = 0
    var result:Double = 0.0
    
    // 배열에 숫자 하나씩 꺼내기
    for i in arr {
        addNumber += i
    }
    
    result = Double(addNumber) / Double(arr.count)
    return result 
}