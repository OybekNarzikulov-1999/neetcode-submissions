class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dic = [[String:Int]: [String]]()
        var collection = [String:Int]()
        for str in strs {
            let array = Array(str)
            for i in 0..<array.count {
                collection[String(array[i]), default: 0] += 1
            }
            dic[collection, default: []].append(str)
            collection.removeAll()
        }
        return Array(dic.values)
    }
}