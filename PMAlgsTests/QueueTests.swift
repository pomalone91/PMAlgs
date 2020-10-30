//
//  QueueTests.swift
//  PMAlgsTests
//
//  Created by Paul Malone on 10/30/20.
//  Copyright © 2020 Paul Malone. All rights reserved.
//

import XCTest
@testable import PMAlgs

class QueueTests: XCTestCase {
    var stringQueue = Queue<String>()
    
    override func setUp() {
        stringQueue.enqueue(item: "Who")
        stringQueue.enqueue(item: "Am")
        stringQueue.enqueue(item: "I")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func enqueTest() {
        XCTAssertEqual(stringQueue.dequeue(), "Who")
    }
    
    
}
