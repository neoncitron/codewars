// You are given an array(list) strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.
//
// Example:
// longestConsec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
//
// n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

func longestConsec(_ strarr: [String], _ k: Int) -> String {
    if k <= 0 || k > strarr.count || strarr.isEmpty {
        return ""
    }
    
    var options = [String]()
    for i in 0...strarr.count - k {
        var addedIndex = i
        var option = ""
        for _ in 1...k {
            option.append(strarr[addedIndex])
            addedIndex += 1
        }
        options.append(option)
    }
    
    return options.sorted {$0.count > $1.count}.first!
}

