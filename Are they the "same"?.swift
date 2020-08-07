//Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two arrays have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

func comp(_ a: [Int], _ b: [Int]) -> Bool {
    return a.map { $0 * $0 }.sorted() == b.sorted()
}
