//
//  PMCollections.swift
//  PMAlgs
//
//  Created by Paul Malone on 10/30/20.
//  Copyright © 2020 Paul Malone. All rights reserved.
//

import Foundation

// Stack implementation
public class Stack<Element> {
    var isEmpty: Bool {
        stack.isEmpty
    }
    var size: Int {
        stack.count
    }
    var stack = [Element]()
    
    func push(item: Element) {
        // Push new item onto stack
        stack.append(item)
    }
    
    func pop() -> Element? {
        // Pop new item off the stack
        return stack.removeLast()
    }
    
    func peek() -> Element? {
        // Return item on top of stack without removing it
        return stack.last
    }
}
