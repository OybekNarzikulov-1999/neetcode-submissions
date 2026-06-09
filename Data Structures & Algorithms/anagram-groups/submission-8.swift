class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dic = [[String:Int]: [String]]()
        for str in strs {
            var collection = [String:Int]()
            let array = Array(str)
            for i in 0..<array.count {
                collection[String(array[i]), default: 0] += 1
            }
            dic[collection, default: []].append(str)
        }
        return Array(dic.values)

        // var res = [Array<Int>: [String]]()

        // for s in strs {
        //     var count = [Int](repeating: 0, count: 26)
        //     for c in s {
        //         count[Int(c.asciiValue!) - 97] += 1
        //     }
        //     res[count, default: []].append(s)
        // }

        // return Array(res.values)
    }
}