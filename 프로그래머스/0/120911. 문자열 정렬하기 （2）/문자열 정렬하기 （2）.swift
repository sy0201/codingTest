import Foundation

func solution(_ my_string:String) -> String {
    var lowered = my_string.lowercased()
    let sorted = lowered.sorted()
    
    return String(sorted)
}