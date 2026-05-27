1
import Foundation
2
​
3
func solution(_ n:Int) -> Int {
4
    var count = 0
5
    var i = 1
6
    
7
    while i * i <= n {
8
        if n % i == 0 {
9
            if i * i == n {
10
                count += 1
11
            } else {
12
                count += 2
13
            }
14
        }
15
        i += 1
16
    }
17
    
18
    return count
19
}