class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var finalArray = [Int]()
        for i in 0..<nums.count {
            let difference = target - nums[i]
            for j in (1+i)..<nums.count {
                if difference == nums[j] {
                    finalArray.append(i)
                    finalArray.append(j)
                }
            }
        }
        return finalArray
    }
}
