import Foundation

let multiArr:[[Int]] = [[1, 1, 1, 0, 0, 0],
                        [0, 1, 0, 0, 0, 0],
                        [1, 1, 1, 0, 0, 0],
                        [0, 0, 0, 0, 0, 0],
                        [0, 0, 0, 0, 0, 0],
                        [0, 0, 0, 0, 0, 0]]


func hourglassSum(arr: [[Int]]) -> Int {
    var maxSum:Int = Int.min
    for row in 0..<4 {
        for col in 0..<4 {
            var sum = arr[row][col] + arr[row][col+1] + arr[row][col+2] +
                                arr[row+1][col+1] +
                        arr[row+2][col] + arr[row+2][col+1] + arr[row+2][col+2]
            
            if sum > maxSum {
                maxSum = sum
            }
        }
    }
    return maxSum
}

hourglassSum(arr: multiArr)
