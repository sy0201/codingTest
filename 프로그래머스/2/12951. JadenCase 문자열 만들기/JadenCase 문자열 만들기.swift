func solution(_ s:String) -> String {
    let words = s.components(separatedBy: " ")
    
    // 각 단어를 JadenCase로 변환
    let jadenWords = words.map { word -> String in
        guard !word.isEmpty else {
            return ""
        }
                                
        let firstChar = word.first!  // 첫번째글자
        let rest = String(word.dropFirst())     // 나머지글자
        
        // 첫 글자가 알파벳이면 대문자, 아니면(숫자) 그대로
        let newFirst = firstChar.isLetter ? String(firstChar).uppercased() : String(firstChar)
      
        return newFirst + rest.lowercased()                   
    }
    return jadenWords.joined(separator: " ")
}