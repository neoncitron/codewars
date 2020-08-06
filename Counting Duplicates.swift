//Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
//
//Example
//"abcde" -> 0 # no characters repeats more than once
//"indivisibility" -> 1 # 'i' occurs six times
//"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice

func countDuplicates(_ s: String) -> Int {
    var seenChars = ""
    var repeatedChars = ""
    var matches = 0
    for i in s.lowercased() {
        if !seenChars.contains(i) {
            seenChars.append(i)
        } else {
            if !repeatedChars.contains(i) {
                matches += 1
                repeatedChars.append(i)
            }
        }
    }
    return matches
}
