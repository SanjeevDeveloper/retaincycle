import UIKit

// ARC - Automatic Reference Counting

class Parent {
    var name: String
    weak var child: Child?
    init(name: String, child: Child?) {
        self.name = name
        self.child = child
    }
    deinit {
        print("Parent class deallocated")
    }
}

class Child {
    var name: String
    weak var parent: Parent?
    init(name: String, parent: Parent?) {
        self.name = name
        self.parent = parent
    }
    deinit {
        print("Child class deallocated")
    }
}

var parent: Parent? = Parent(name: "Peter", child: nil)

var child: Child? = Child(name: "John", parent: nil)

parent?.child = child

child?.parent = parent

parent = nil
child = nil

