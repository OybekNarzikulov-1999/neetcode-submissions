class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var coll = [Int:Int]()
        for i in 0..<nums.count {
            coll[nums[i], default: 0] += 1
        }
        let sorted = coll.sorted {
            $0.value > $1.value
        }
        var arr = [Int](repeating: 0, count: k)
        for i in 0..<k {
            arr[i] = sorted[i].key
        }
        return arr
    }
}
