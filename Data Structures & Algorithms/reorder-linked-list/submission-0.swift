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
    func reorderList(_ head: ListNode?) {
        guard head != nil, head?.next != nil else {
            return
        }

        // Find the middle
        var slow = head
        var fast = head

        while fast?.next != nil, fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        // Split the list
        var second = slow?.next
        slow?.next = nil // fast half

        // Reverse the second half
        var prev: ListNode? = nil
        var current = second
        while current != nil {
            let next = current?.next
            current?.next = prev
            prev = current
            current = next
        }

        second = prev
        var first = head

        while second != nil {
            var temp1 = first?.next
            var temp2 = second?.next

            first?.next = second
            second?.next = temp1

            first = temp1
            second = temp2
        }
    }
}
