//Create a function that takes a Roman numeral as its argument and returns its value as a numeric decimal integer. You don't need to validate the form of the Roman numeral.

import Foundation

func solution(_ string: String) -> Int {
    let values = ["I" : 1, "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
    let roman = string.map { String($0) }
    var number = 0
    for (index, char) in roman.enumerated() {
        if index == roman.count - 1 || values[char]! >= values[roman[index + 1]]! {
            number += values[char]!
        } else if values[char]! < values[roman[index + 1]]! {
            number -= values[char]!
        }
    }
    return number
}
