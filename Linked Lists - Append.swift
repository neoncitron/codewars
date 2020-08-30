//Write an Append() function which appends one linked list to another. The head of the resulting list should be returned.
//
//If both listA and listB are null/NULL/None/nil, return null/NULL/None/nil. If one list is null/NULL/None/nil and the other is not, simply return the non-null/NULL/None/nil list.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func append(_ listA:Node?, _ listB:Node?) -> Node? {
    guard listA != nil else { return listB }
    
    if listA?.next == nil {
        listA?.next = listB
    } else {
        append(listA?.next!, listB)
    }
    
    return listA
}

