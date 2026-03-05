import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for command in commands {
        let i = command[0]
        let j = command[1]
        let k = command[2]
        
        // i번째부터 j번째까지를 '인덱스'로
        // i가 2면 1...4
        let slicedArray = Array(array[(i-1)...(j-1)])
        
        // slicedArray sorted
        let sortedArray = slicedArray.sorted()
        
        // k가져와서 결과에 넣기
        // sortedArray의 (k-1) 인덱스에 있는 값이 우리가 찾는 값
        result.append(sortedArray[k-1])
    }

    return result
}