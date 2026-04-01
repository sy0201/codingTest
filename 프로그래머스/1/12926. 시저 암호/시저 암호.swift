func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    
    for c in s {
        if c == " " {
            result.append(" ")
        } else if c.isUppercase {
            let num = Int(c.asciiValue!)
            let moved = (num - 65 + n) % 26 + 65
            result.append(Character(UnicodeScalar(moved)!))
        } else if c.isLowercase {
            let num = Int(c.asciiValue!)
            let moved = (num - 97 + n) % 26 + 97
            result.append(Character(UnicodeScalar(moved)!))
        }
    }
    
    return result
}