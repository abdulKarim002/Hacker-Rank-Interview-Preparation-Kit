import UIKit
import Foundation

func repeatedString(s: String, n: Int) -> Int {
    var x:Double
    var noOfa:Int = 0
    var countableReminder:Int = 0
    let arrOfstr = Array(s)
    
    let remainder  = n%arrOfstr.count
    let quo = n/arrOfstr.count

//Solution - 1
    if remainder > 0 {
        for i in 0...remainder-1 {
            if arrOfstr[i] == "a" {
                countableReminder += 1
                noOfa += 1
            }
        }
    }
    for i in remainder...arrOfstr.count-1 {
        if arrOfstr[i] == "a" {
            noOfa += 1
        }
    }

//Solution - 2
//    for i in 0...arrOfstr.count - 1 {
//        if arrOfstr[i] == "a" {
//            noOfa += 1
//        }
//        if arrOfstr[i] == "a" && i < remainder{
//            countableReminder += 1
//        }
//    }
    

//Solution - 3
//    for i in arrOfstr {
//        if i == "a" {
//            noOfa += 1
//        }
//    }
//
//    if remainder > 0 {
//        for i in 0...remainder-1 {
//            if arrOfstr[i] == "a" {
//                countableReminder += 1
//            }
//        }
//    }

    
    noOfa = (noOfa * quo) + countableReminder

    return noOfa
    
}


let str = "a"
let strOfN = 1000000000000
//let tc1 = repeatedString(s: str, n: strOfN)

let str2 = "aba"
let strOfN2 = 10
let tc2 =  repeatedString(s: str2, n: strOfN2)

let str3 = "abcac"
let strOfN3 = 10
//let tc3 =  repeatedString(s: str3, n: strOfN3)
