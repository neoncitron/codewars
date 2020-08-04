//Digital root is the recursive sum of all the digits in a number.
//
//Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.
//
// 942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6

func digitalRoot(of number: Int) -> Int {
    let sum = String(number).map { Int(String($0))! }.reduce(0, +)
    return sum > 9 ? digitalRoot(of: sum) : sum
}
