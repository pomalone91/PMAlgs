//
//  Queue.swift
//  PMAlgs
//
//  Created by Paul Malone on 10/30/20.
//  Copyright © 2020 Paul Malone. All rights reserved.
//

import Foundation

public struct Queue<Element> {
    var queue = [Element]()
    var isEmpty: Bool {
        queue.isEmpty
    }
    var size: Int {
        queue.count
    }
 
    mutating func enqueue(item: Element) {
        // Add new item to front of queue
        queue.append(item)
    }
    
    mutating func dequeue() -> Element? {
        // Remove item from end of queue
        return queue.removeFirst()
    }
}
