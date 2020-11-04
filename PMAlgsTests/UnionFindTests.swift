//
//  PMAlgsTests.swift
//  PMAlgsTests
//
//  Created by Paul Malone on 10/17/18.
//  Copyright © 2018 Paul Malone. All rights reserved.
//

import XCTest
@testable import PMAlgs

class PMAlgsTests: XCTestCase {
    var ufUnderTest = UnionFind(10)

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testConnected() {
        ufUnderTest = UnionFind(10)
        
        ufUnderTest.union(1, 4)
        XCTAssert(ufUnderTest.connected(p: 1, q: 4) == true)
        XCTAssert(ufUnderTest.connected(p: 1, q: 7) == false)
    }

    func testFind() {
        ufUnderTest = UnionFind(10)
        ufUnderTest.union(1, 4)
        // 1 should be in 4's component
        XCTAssert(ufUnderTest.find(1) == 4)
        XCTAssert(ufUnderTest.find(4) == 4)
        
        ufUnderTest.union(4, 8)
        
        // 1 and 4 should now be in 8?
        XCTAssert(ufUnderTest.find(1) == 8)
        XCTAssert(ufUnderTest.find(4) == 8)
        XCTAssert(ufUnderTest.find(8) == 8)
    }
    
    func testCount() {
        ufUnderTest = UnionFind(10)
        ufUnderTest.union(1, 4)
        ufUnderTest.union(4, 5)
        XCTAssert(ufUnderTest.getCount() == 8)
        
        ufUnderTest.union(5, 8)
        ufUnderTest.union(4, 8)

        XCTAssert(ufUnderTest.getCount() == 7)
    }
}
