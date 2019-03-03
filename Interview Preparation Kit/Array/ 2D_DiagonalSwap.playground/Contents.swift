import UIKit
import Foundation


func diagonalDifference(arr: [[Int]]) -> Int {
    
    var leftDiagonalSum:Int = 0
    var rightDiagonalSum:Int = 0
    
    let n = arr.count
    for i in 0..<n {
        leftDiagonalSum += arr[i][i]
        rightDiagonalSum += arr[i][n-i-1]
    }
    
    return abs(leftDiagonalSum - rightDiagonalSum)
}

//func checkGreaterNumber (x:Int, y:Int) ->


let tc1 = diagonalDifference(arr: [[11,2,4],[4,5,6],[10,8,-12]])

