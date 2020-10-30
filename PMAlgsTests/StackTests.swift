//
//  PMCollections.swift
//  PMAlgsTests
//
//  Created by Paul Malone on 10/30/20.
//  Copyright © 2020 Paul Malone. All rights reserved.
//

import XCTest
@testable import PMAlgs

class PMCollectionsTest: XCTestCase {
    // Test variables
    var stringStack = Stack<String>()
    var intStack = Stack<Int>()
    
    override func setUp() {
        stringStack.push(item: "First")
        stringStack.push(item: "Second")
        stringStack.push(item: "Third")
        
        intStack.push(item: 510)
        intStack.push(item: 345)
        intStack.push(item: 55734858310)
        intStack.push(item: -4334510)
        intStack.push(item: 4333333510)
        intStack.push(item: 1)
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: Stack
    
    // Stack tests
    func testPush() {
        XCTAssert(stringStack.peek() == "Third")
        XCTAssert(stringStack.peek() != "Second")
        XCTAssert(stringStack.peek() != "First")
        
        XCTAssertEqual(intStack.peek(), 1)
        
    }
    
    func testPop() {
        setUp()
        
        var string = stringStack.pop()
        XCTAssertEqual(string, "Third")
        
        string = stringStack.pop()
        XCTAssertEqual(string, "Second")
        
        let int = intStack.pop()
        XCTAssertEqual(int, 1)
        XCTAssertEqual(intStack.peek(), 4333333510)
    }
    
    // MARK: Queue
}
