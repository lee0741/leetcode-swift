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

public class ListNode {
    public var val: Int
    public var next: ListNode?

    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let dummyHead = ListNode(0)
    var tmp1: ListNode? = l1
    var tmp2: ListNode? = l2
    var curr = dummyHead
    var sum = 0
    
    while tmp1 != nil || tmp2 != nil {
        sum /= 10
        
        if let n = tmp1 {
            sum += n.val
            tmp1 = n.next
        }
        
        if let n = tmp2 {
            sum += n.val
            tmp2 = n.next
        }
        
        curr.next = ListNode(sum % 10)
        if let n = curr.next {
            curr = n
        }
    }
    
    if sum / 10 == 1 {
        curr.next = ListNode(1)
    }
    
    return dummyHead.next
}

let l1 = ListNode(6)
let l2 = ListNode(7)
addTwoNumbers(l1, l2)

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
