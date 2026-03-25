func solution(_ strings:[String], _ n:Int) -> [String] {
    // 배열의 내용 중 인덱스n 추출
    // 인덱스 1의 문자가 같은 문자열인 경우 알파벳 순으로 정렬
    return strings.sorted { (first, second) in
        let firstChar = Array(first)[n]
        let secondChar = Array(second)[n]
                           
        if firstChar == secondChar {
            return first < second
        } else {
            return firstChar < secondChar
        }
    }
}