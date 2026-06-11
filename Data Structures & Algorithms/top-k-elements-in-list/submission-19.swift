class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freq = [Int:Int]()

        for i in 0..<nums.count {
            freq[nums[i], default: 0] += 1
        }

        var buckets = Array(repeating: [Int](), count: nums.count + 1)
        for (num, freq) in freq {
            buckets[freq].append(num)
        }

        var result = [Int]()
        for i in (0..<buckets.count).reversed() {
            result += buckets[i]
            if result.count == k {
                break
            }
        }
        return result 
    }
}