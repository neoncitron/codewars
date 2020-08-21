//You will be given a number and you will need to return it as a string in Expanded Form. For example:
//
//expandedForm 12    -- Should return '10 + 2'
//expandedForm 42    -- Should return '40 + 2'
//expandedForm 70304 -- Should return '70000 + 300 + 4'
//NOTE: All numbers will be whole numbers greater than 0.

func expandedForm(_ num: Int) -> String {
    var result = [String]()
    var length = String(num).count - 1
    for i in String(num) {
        if i != "0" {
            result.append(String(i) + repeatElement("0", count: length))
            length -= 1
        } else {
            length -= 1
        }
    }
    return result.joined(separator: " + ")
}
