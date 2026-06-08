class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var finalArray = [Int:Int]()
        for (i, n) in nums.enumerated() {
            var difference = target - n
            if let index = finalArray[difference] {
                return [index, i]
            }
            finalArray[n] = i
        }
        return []
    }
}
