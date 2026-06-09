import HeapModule

struct NumFreq: Comparable {
    let num: Int
    let freq: Int

    static func < (lhs: NumFreq, rhs: NumFreq) -> Bool {
        return lhs.freq < rhs.freq
    }
}


class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var coll = [Int:Int]()
        for i in 0..<nums.count {
            coll[nums[i], default: 0] += 1
        }
        
        var heap: Heap<NumFreq> = []
        for (num, freq) in coll {
            heap.insert(NumFreq(num: num, freq: freq))
            if heap.count > k {
                heap.removeMin()
            }
        }

        var res = [Int]()
        for i in 0..<k {
            res.append(heap.removeMin().num)
        }
        return res
    }
}
