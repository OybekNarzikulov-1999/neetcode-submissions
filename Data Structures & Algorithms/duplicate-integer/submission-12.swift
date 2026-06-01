class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        // return nums.count != Set(nums).count
        // 1. Brute force // TC: O(n2) SC: O(1)
        // let count = nums.count
        // for i in 0..<count {
        //     for j in (i + 1)..<count {
        //         if nums[i] == nums[j] {
        //             return true
        //         }
        //     }
        // }
        // return false

        // 2. Hash Set
        var container = Set<Int>()
        for num in nums {
            if container.contains(num) {
                return true
            }
            container.insert(num)
        }
        return false
    }
}
