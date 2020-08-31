//Implement Length() to count the number of nodes in a linked list.
//Implement Count() to count the occurrences of an integer in a linked list.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func length(_ head: Node?) -> Int {
    var node = head
    var length = 0
    while node != nil {
        length += 1
        node = node?.next
    }
    return length
}

func count(_ head: Node?, _ data: Int) -> Int {
    var node = head
    var count = 0
    while node != nil {
        if node!.data == data {
            count += 1
        }
        node = node?.next
    }
    return count
}
