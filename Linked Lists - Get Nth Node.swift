//Implement a GetNth() function that takes a linked list and an integer index and returns the node stored at the Nth index position. GetNth() uses the C numbering convention that the first node is index 0, the second is index 1, ... and so on. So for the list 42 -> 13 -> 666, GetNth() with index 1 should return Node(13);

//The index should be in the range [0..length-1]. If it is not, GetNth() should throw/raise an exception (ArgumentException in C#, InvalidArgumentException in PHP). You should also raise an exception (ArgumentException in C#, InvalidArgumentException in PHP) if the list is empty/null/None.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

enum IndexErrors: Error {
    case invalidIndex
}

func getNth(_ head: Node?, _ index: Int) throws -> Node? {
  guard let node = head, index >= 0 else { throw IndexErrors.invalidIndex }
    return index == 0 ? node : try getNth(node.next, index - 1)
}

