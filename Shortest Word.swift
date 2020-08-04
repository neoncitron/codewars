//Simple, given a string of words, return the length of the shortest word(s).
//
//String will never be empty and you do not need to account for different data types.

import Foundation

func find_short(_ str: String) -> Int {
    return str.components(separatedBy: " ").sorted() { $0.count < $1.count }.first!.count
}
