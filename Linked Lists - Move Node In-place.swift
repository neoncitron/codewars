//Write a MoveNode() function which takes the node from the front of the source list and moves it to the front of the destintation list. This problem should be done after Linked Lists - Move Node.
//
//You should throw an error if any of the following conditions exist:
//
//The source argument is null.
//The dest argument is null.
//The source argument is an "empty" node with a null data attribute.
//Unlike the Linked Lists - Move Node kata, we are not returning a Context object but rather we are changing two objects in-place. We are also introducing the concept of an emtpy Node object whose data attribute is set to null. Passing in an empty node rather than null for the dest argument to indicate an empty destination list enables members/attributes of dest to be mutated within the function with the side effect of changing the destination list outside of the function.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

enum Errors: Error {
    case emptyList
    case dataIsNil
}

func moveNodeInPlace(_ source:inout Node?, _ dest: inout Node?) throws {
    guard source != nil && dest != nil else { throw Errors.emptyList }
    guard source?.data != nil else { throw Errors.dataIsNil }
    
    dest = push(dest, source!.data)
    source = source?.next
}

// The push() function was already provided by the exercise. 
