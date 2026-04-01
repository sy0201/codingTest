func solution(_ phoneNumber:String) -> String {
    let stars = String(repeating: "*", count: phoneNumber.count - 4)
    let last4 = String(phoneNumber.suffix(4))
    return stars + last4
}