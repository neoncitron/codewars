//This time no story, no theory. The examples below show you how to write function accum:
//
//Examples:
//
//accum("abcd") -> "A-Bb-Ccc-Dddd"
//accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
//accum("cwAt") -> "C-Ww-Aaa-Tttt"
//The parameter of accum is a string which includes only letters from a..z and A..Z.

func accum(_ s: String) -> String {
  var result = ""
    for (index, char) in Array(s).enumerated() {
        result.append(char.uppercased())
        if index > 0 {
            for _ in 1...index {
                result.append(char.lowercased())
            }
        }
        if index != s.count - 1 {
            result.append("-")
        }
    }
    return result
}
