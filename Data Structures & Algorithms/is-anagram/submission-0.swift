class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false } 
        var sCollection = [String:Int]()
        var tCollection = [String:Int]()
        let tArray = Array(s)
        let sArray = Array(t)
        for i in 0..<sArray.count {
            sCollection[String(sArray[i]), default: 0] += 1
            tCollection[String(tArray[i]), default: 0] += 1
        }
        return sCollection == tCollection
    }
}
