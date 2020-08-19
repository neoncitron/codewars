//Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.
//
//You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
//The array will always contain letters in only one case.
//
//Example:
//
//["a","b","c","d","f"] -> "e"
//["O","Q","R","S"] -> "P"

func findMissingLetter(_ chArr: [Character]) -> Character {
    let lowercased = chArr.map { Character($0.lowercased()) }
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    let range = alphabet.prefix(upTo: alphabet.firstIndex(of: lowercased.last!)! + 1).suffix(from: alphabet.firstIndex(of: lowercased.first!)!)
    let diff = Set(range).subtracting(lowercased).first!
    return chArr.first!.isLowercase ? diff : Character(diff.uppercased())
}
