/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        var curr: ListNode? = head
        var prev: ListNode? = nil
        while curr != nil {
            var next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }
        return prev
    }
}
