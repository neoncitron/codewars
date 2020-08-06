//Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
//
//For example:
//
// persistence(for: 39) === 3
// because 3*9 = 27, 2*7 = 14, 1*4=4
// and 4 has only one digit


func persistence(for num: Int) -> Int {
   var multiplications = 0
    var number = num
    while String(number).count > 1 {
        number = String(number).map { Int(String($0))! }.reduce(1, *)
        multiplications += 1
    }
    return multiplications
}

