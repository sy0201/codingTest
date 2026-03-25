import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var pCount: Int = 0
    var yCount: Int = 0
    let lowerS = s.lowercased()
    
    for char in lowerS {
        if char == "p" {
            pCount += 1
        } else if char == "y" {
            yCount += 1
        }
    }

    return pCount == yCount
}