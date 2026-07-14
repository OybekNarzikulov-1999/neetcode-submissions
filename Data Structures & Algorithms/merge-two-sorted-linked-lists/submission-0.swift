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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var curr1 = list1
        var curr2 = list2

        let dummy = ListNode(0)
        var tail = dummy

        while let node1 = curr1, let node2 = curr2 {
            if node1.val < node2.val {
                tail.next = node1
                curr1 = node1.next
            } else {
                tail.next = node2
                curr2 = node2.next
            }

            tail = tail.next!
        }

        tail.next = curr1 ?? curr2
        return dummy.next
    }
}
