//Your job is to change the given string s using a non-negative integer n.
//
//Each bit in n will specify whether or not to swap the case for each alphabetic character in s: if the bit is 1, swap the case; if its 0, leave it as is. When you finished with the last bit of n, start again with the first bit.
//
//You should skip the checking of bits when a non-alphabetic character is encountered, but they should be preserved in their original positions.
//
//Examples
//swap('Hello world!', 11)  -->  'heLLO wORLd!'
//...because 11 is 1011 in binary, so the 1st, 3rd, 4th, 5th, 7th, 8th and 9th alphabetical characters have to be swapped:
//
//H e l l o  w o r l d !
//1 0 1 1 1  0 1 1 1 0
//^   ^ ^ ^    ^ ^ ^

func swap(_ s: String, _ n: Int) -> String {
    let pattern = Array(String(n, radix: 2))
    var result = ""
    var index = 0
    for char in s {
        if !"abcdefghijklmnopqrstuvwxyz".contains(char.lowercased()) {
            result.append(char)
            continue
        }
        
        if pattern[index] == "0" {
            result.append(char)
        } else if pattern[index] == "1" {
            result.append(changeCase(char))
        }
        
        if index == pattern.count - 1 {
            index = 0
        } else {
            index += 1
        }
    }
    
    return result
}

func changeCase(_ character: Character) -> Character {
    return character.isLowercase ? Character(character.uppercased()) : Character(character.lowercased())
}
