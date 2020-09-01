//Write a RemoveDuplicates() function which takes a list sorted in increasing order and deletes any duplicate nodes from the list. Ideally, the list should only be traversed once. The head of the resulting list should be returned.
//
//If the passed in list is null/None/nil, simply return null.
//
//Note: Your solution is expected to work on long lists. Recursive solutions may fail due to stack size limitations.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func removeDuplicates(head:Node?) -> Node? {
  guard var currentNode = head else { return nil }
    while let next = currentNode.next {
        if currentNode.data == next.data {
            currentNode.next = next.next
        } else {
            currentNode = next
        }
    }
    return head
}
