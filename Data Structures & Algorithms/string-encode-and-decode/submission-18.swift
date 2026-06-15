class Solution {
    func encode(_ strs: [String]) -> String {
        var res: [String] = []
        res.reserveCapacity(strs.count * 3)
        for s in strs {
            res.append(String(s.count))
            res.append("#")
            res.append(s)
        }
        return res.joined()
    }

    func decode(_ s: String) -> [String] {
        var res = [String]()
        let sArr = Array(s)
        var i = 0

        while i < sArr.count {
            var j = i
            while sArr[j] != "#" {
                j += 1
            }
            let lengthStr = String(sArr[i..<j])
            let length = Int(lengthStr)!

            i = j + 1
            let end = i + length
            let substring = String(sArr[i..<end])
            res.append(substring)
            i = end
        }

        return res
    }
}