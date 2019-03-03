import UIKit
import Foundation

// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {
    var leftRotatedArr = a

    var temp = [Int]()
    
    for i in d...a.count - 1 {
        temp.append(a[i])
        // leftRotatedArr.remove(at: 0)
    }
    for i in 0...d-1 {
        temp.append(a[i])
    }
    return temp
//    for i in 0...d-1 {
//      leftRotatedArr.append(a[i])
//      leftRotatedArr.remove(at: 0)
//    }
//
//
//    return leftRotatedArr
    
}

let arr1 = [1,2,3,4,5]
//exp = [3,4,5,1,2]
//let tc1 = rotLeft(a: arr1, d: 2 )
//exp = [5,1,2,3,4]
let tc2 = rotLeft(a: arr1, d: 4)



