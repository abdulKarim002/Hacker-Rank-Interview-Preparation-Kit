/*
 Question: -
 Gary is an avid hiker. He tracks his hikes meticulously, paying close attention to small details like topography. During his last hike he took exactly  steps. For every step he took, he noted if it was an uphill, , or a downhill,  step. Gary's hikes start and end at sea level and each step up or down represents a  unit change in altitude. We define the following terms:
 
 A mountain is a sequence of consecutive steps above sea level, starting with a step up from sea level and ending with a step down to sea level.
 A valley is a sequence of consecutive steps below sea level, starting with a step down from sea level and ending with a step up to sea level.
 Given Gary's sequence of up and down steps during his last hike, find and print the number of valleys he walked through.
 
 For example, if Gary's path is , he first enters a valley  units deep. Then he climbs out an up onto a mountain  units high. Finally, he returns to sea level and ends his hike.
 
 Function Description
 
 Complete the countingValleys function in the editor below. It must return an integer that denotes the number of valleys Gary traversed.
 
 countingValleys has the following parameter(s):
 
 n: the number of steps Gary takes
 s: a string describing his path
 Input Format
 
 The first line contains an integer , the number of steps in Gary's hike.
 The second line contains a single string , of  characters that describe his path.
 
 Constraints
 
 Output Format
 
 Print a single integer that denotes the number of valleys Gary walked through during his hike.
 
 Sample Input
 
 8
 UDDDUDUU
 Sample Output
 
 1
 Explanation
 
 If we represent _ as sea level, a step up as /, and a step down as \, Gary's hike can be drawn as:
 
 _/\      _
    \    /
     \/\/
 He enters and leaves one valley.
 */

//Solu:-

import Foundation

func countingValleys(n: Int, s: String) -> Int {
    var noOfValley:Int = 0
   // var isValley:Bool =  false
    var levelCtr:Int = 0
    
    let arrOfString  = Array(s)
    for str in arrOfString {
        if str == "D" {
            //if levelCtr == 0 {
             //   isValley = true
           // }
            levelCtr -= 1
        }
        //check for U
        else {
            levelCtr += 1
        }
        
        if str == "U" && levelCtr == 0 {
            noOfValley += 1
            //isValley = false
        }
    }
    
    return noOfValley
}

//exp out - 1
let testCase01 = countingValleys(n: 8, s: "UDDDUDUU")
//exp out - 2
let testCase02 = countingValleys(n: 12, s: "DDUUDDUDUUUD")

print(testCase01)
print(testCase02)



/*
 
 // Complete the countingValleys function below.
 func countingValleys(n: Int, s: String) -> Int {
 var noOfValley:Int = 0
 var isValley:Bool =  false
 var levelCtr:Int = 0
 
 let arrOfString  = Array(s)
 for str in arrOfString {
 if str == "D" {
 if levelCtr == 0 {
 isValley = true
 }
 levelCtr -= 1
 }
 //check for U
 else {
 levelCtr += 1
 }
 
 if isValley == true && levelCtr == 0 {
 noOfValley += 1
 isValley = false
 }
 }
 
 return noOfValley
 }
*/




