import UIKit
import Foundation

func jumpingOnClouds(c: [Int]) -> Int {
    var minJump:Int = 0
    
    var zeroCtr:Int = 1
    
    for i in 0...c.count-1 {
        if c[i] == 1 {
            minJump += 1
            zeroCtr = 1
        }
        if c[i] == 0 {
            zeroCtr += 1
        }
        if zeroCtr == 3 {
            minJump += 1
            zeroCtr = 1
        }
        
    }
   return minJump
}

//excpected out - 3
let tc1 = [0,1,0,0,0,1,0]
//exc out - 4
let tc2 = [0,0,1,0,0,1,0]
//exe out - 3
let tc3 = [0,0,0,0,1,0]
//exe out - 3
let tc4 = [0,0,0,1,0,0]
jumpingOnClouds(c: tc3)
