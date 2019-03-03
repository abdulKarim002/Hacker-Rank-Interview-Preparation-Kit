

import Foundation

func findDuplicateNumber(arr:[Int]) {
    let mappedItems = arr.map { ($0, 1) }
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    print(counts)
    for (key, values) in counts {
        if values == 2 {
            print("\(key) is repeated \(values) times")
        }
    }

}

let ar = [1,2,3,4,5,2,3,5,6,78,3,5,2,4]
findDuplicateNumber(arr: ar)


/*
 Find the Missing Number
 You are given a list of n-1 integers and these integers are in the range of 1 to n. There are no duplicates in list. One of the integers is missing in the list. Write an efficient code to find the missing integer.
 
 Example :
 I/P    [1, 2, 4, ,6, 3, 7, 8]
 O/P    5
 
 


func getMissingNumber(arr:[Int]) {
    let n = arr.count
    let total = (n+1)*(n+2)/2
    let sumOfA = arr.reduce(0, +)
    let missingNo = total - sumOfA
    print(missingNo)
}

func getMissingNumber02(arr:[Int]) {
    var x1 = arr[0]
    var x2 = 1
    
    for i in 1..<arr.count {
        x1 = x1 ^ arr[i]
    }
    
    for j in 2..<arr.count + 2 {
        x2 = x2 ^ j
    }
    
    let missingNo = x1 ^ x2
    print(missingNo)
}

getMissingNumber(arr: [1, 2, 4, 6, 3, 7, 8])
getMissingNumber02(arr: [1,5,4,3,7,8,2])
*/
//----------------------------
/*
 Find the middle of a given linked list
 
 Given a singly linked list, find middle of the linked list. For example, if given linked list is 1->2->3->4->5 then output should be 3.
 
 If there are even nodes, then there would be two middle nodes, we need to print second middle element. For example, if given linked list is 1->2->3->4->5->6 then output should be 4.
 */
/*
class Linklist {
    let value: Int
    let nextRef: Linklist?
    
    init(_value:Int, _nextRef:Linklist?) {
        self.value = _value
        self.nextRef = _nextRef
    }
}

let three = Linklist(_value: 3, _nextRef: nil)
let two = Linklist(_value: 2, _nextRef: three)
let one = Linklist(_value: 1, _nextRef: two)

func findMiddelElement(head:Linklist?) {
    var currentNode = head
    var nodeCount:Int = 0
    while currentNode != nil {
        //print(currentNode?.value ?? -1)
        nodeCount += 1
        currentNode = currentNode?.nextRef
    }
    print(nodeCount)
}

findMiddelElement(head: one)

*/


