/*:
 [Previous](@previous) | [Next](@next)
 ****
 Copyright (c) 2016 Yancen Li.
 Licensed under MIT License
 
 See Yancen Li - [yancen.org](http://yancen.org) | [@lee0741](https://twitter.com/lee0741)
 ****
 */

/*: 
 ## Add Two Numbers
 
 You are given two linked lists representing two non-negative numbers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 
 Output: 7 -> 0 -> 8 
 */

class ListNode {
    var value: Int
    var next: ListNode?

    init(nodeValue: Int, nodeNext: ListNode?) {
        self.value = nodeValue
        self.next = nodeNext
    }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let dummyHead = ListNode(nodeValue: 0, nodeNext: nil)
    var tmp1: ListNode? = l1
    var tmp2: ListNode? = l2
    var curr = dummyHead
    var sum = 0
    
    while tmp1 != nil || tmp2 != nil {
        sum /= 10
        
        if let n = tmp1 {
            sum += n.value
            tmp1 = n.next
        }
        
        if let n = tmp2 {
            sum += n.value
            tmp2 = n.next
        }
        
        curr.next = ListNode(nodeValue: sum % 10, nodeNext: nil)
        if let n = curr.next {
            curr = n
        }
    }
    
    if sum / 10 == 1 {
        curr.next = ListNode(nodeValue: 1, nodeNext: nil)
    }
    
    return dummyHead.next
}

let l1 = ListNode(nodeValue: 6, nodeNext: nil)
let l2 = ListNode(nodeValue: 7, nodeNext: nil)
addTwoNumbers(l1, l2)

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
