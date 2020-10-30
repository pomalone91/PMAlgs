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
        
//        var intStack = Stack<Int>()
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // Stack tests
    func testPush() {
        XCTAssert(stringStack.peek() == "Third")
        XCTAssert(stringStack.peek() != "Second")
        XCTAssert(stringStack.peek() != "First")
    }
    
    func testPop() {
        setUp()
        
        let string = stringStack.pop()
        XCTAssert(string == "Third")
        XCTAssert(stringStack.peek() == "Second")
        XCTAssert(stringStack.peek() != "First")
    }
}
