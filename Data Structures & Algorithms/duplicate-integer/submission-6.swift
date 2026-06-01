class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        // return nums.count != Set(nums).count
        // 1. Brute force
        let count = nums.count
        for i in 0..<count {
            for j in (i + 1)..<count {
                if nums[i] == nums[j] {
                    return true
                }
            }
        }
        return false
    }
}
