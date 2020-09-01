//Write a MoveNode() function which takes the node from the front of the source list and moves it to the front of the destintation list. You should throw an error when the source list is empty. For simplicity, we use a Context object to store and return the state of the two linked lists. A Context object containing the two mutated lists should be returned by moveNode.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

struct Context {
    var source:Node?
    var dest:Node?
}

enum Errors: Error {
    case emptyList
}

func moveNode(source:Node?, dest:Node?) throws -> Context? {
    guard let sourceHead = source else { throw Errors.emptyList }
    var context = Context()
    context.source = sourceHead.next
    source?.next = dest
    context.dest = source
    return context
}
