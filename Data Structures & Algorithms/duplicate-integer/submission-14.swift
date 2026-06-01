class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
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
