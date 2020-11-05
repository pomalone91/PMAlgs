//
//  InsertionSort.swift
//  PMAlgs
//
//  Created by Paul Malone on 11/4/20.
//  Copyright © 2020 Paul Malone. All rights reserved.
//

import Foundation

func insertionSort<T: Comparable>(array: [T]) -> [T] {
    var sortedArray = array
    if array.count <= 1 {    // Get out of here if there's 0 or 1 element in array
        return sortedArray
    }
    // Compare element at i with each element to the left until a smaller element is found
    for i in 1..<sortedArray.count {
        var j = i - 1
        if sortedArray[i] < sortedArray[j] {
            sortedArray.swapAt(i, j)
        }
        while j > 0 {
            if sortedArray[j] < sortedArray[j - 1] {
                sortedArray.swapAt(j, j - 1)
            }
            j -= 1
        }
    }
    return sortedArray
}

//extension Array where Element: Comparable {
//    mutating func insertionSort() {
//        if self.count <= 1 {    // Get out of here if there's 0 or 1 element in array
//            return
//        }
//        // Compare element at i with each element to the left until a smaller element is found
//        for i in 1..<self.count {
//            var j = i - 1
//            while j >= 0 {
//                if self[i] < self[j] {
//                    self.swapAt(i, j)
//                } else {
//                    j -= 1
//                }
//            }
//        }
//    }
//}
