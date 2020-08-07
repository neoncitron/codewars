//The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

func duplicateEncode(_ word: String) -> String {
    var duplicateDatabase = [ Character : Bool ]()
    var result = ""
    
    for i in word.lowercased() {
        if duplicateDatabase[i] == nil {
            duplicateDatabase[i] = false
        } else {
            duplicateDatabase[i] = true
        }
    }

    for i in word.lowercased() {
        duplicateDatabase[i] == true ? result.append(")") : result.append("(")
    }
    return result
}
