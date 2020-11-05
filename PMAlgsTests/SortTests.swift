//
//  SortTests.swift
//  PMAlgsTests
//
//  Created by Paul Malone on 11/4/20.
//  Copyright © 2020 Paul Malone. All rights reserved.
//

import XCTest
@testable import PMAlgs

class SortTests: XCTestCase {
    var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    var stringArray = ["a", "b", "c", "d"]

    override func setUp() {
//        array.sort()
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testInsertionSort() {
        var arrayToSort = array.shuffled()
        arrayToSort = insertionSort(arrayToSort)
        XCTAssertEqual(arrayToSort, array)
        
        var stringsToSort = stringArray.shuffled()
        stringsToSort = insertionSort(stringsToSort)
        XCTAssertEqual(stringsToSort, stringArray)
    }
    
    func testSmallArrays() {
        let smallArray = [1]
        let smallerArray = [Int]()
        
        XCTAssertEqual(insertionSort(smallArray), smallArray)
        XCTAssertEqual(insertionSort(smallerArray), smallerArray)
    }
    
    func testSelectionSort() {
        let arrayToSort = array.shuffled()
        XCTAssertEqual(selectionSort(arrayToSort), array)
        XCTAssertEqual(selectionSort(stringArray.shuffled()), stringArray)
    }
}
