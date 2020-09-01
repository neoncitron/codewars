//Linked Lists - Insert Nth
//
//Implement an InsertNth() function (insert_nth() in PHP) which can insert a new node at any index within a list.
//
//InsertNth() is a more general version of the Push() function that we implemented in the first kata listed below. Given a list, an index 'n' in the range 0..length, and a data element, add a new node to the list so that it has the given index. InsertNth() should return the head of the list.
//
//You must throw/raise an exception (ArgumentOutOfRangeException in C#, InvalidArgumentException in PHP) if the index is too large.

enum IndexErrors: Error {
    case invalidIndex
}

func insertNth(_ head: Node?, _ index: Int, _ data: Int) throws -> Node? {
    if head == nil && index != 0 {
        throw IndexErrors.invalidIndex
    }
    let newNode = Node(data)
    let node = head
    if index == 0 {
        newNode.next = head
        return newNode
    }
    node?.next = try insertNth(node?.next, index - 1, data)
    return node
}

// The implementation of the Node class was already provided. Check other solutions of the Linked List exercises, if necessary.
