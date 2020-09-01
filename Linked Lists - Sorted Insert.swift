//Write a SortedInsert() function which inserts a node into the correct location of a pre-sorted linked list which is sorted in ascending order. SortedInsert takes the head of a linked list and data used to create a node as arguments. SortedInsert() should also return the head of the list.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func sortedInsert(_ head: Node?, _ data: Int) -> Node? {
   guard let head = head else { return Node(data) }
    
    if head.data > data {
        let newNode = Node(data)
        newNode.next = head
        return newNode
    }
    
    head.next = sortedInsert(head.next, data)
    return head
}
