//You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

//[2, 4, 0, 100, 4, 11, 2602, 36]
//Should return: 11 (the only odd number)

func findOutlier(_ array: [Int]) -> Int {
    if areEven(array[0], array[1]) || areEven(array[1], array[2]) || areEven(array[0], array[2]) {
        return array.filter( {$0 % 2 != 0 })[0]
    } else {
        return array.filter( {$0 % 2 == 0 })[0]
    }
}

func areEven(_ num1: Int, _ num2: Int) -> Bool {
    return num1 % 2 == 0 && num2 % 2 == 0
}

