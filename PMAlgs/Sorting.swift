//
//  InsertionSort.swift
//  PMAlgs
//
//  Created by Paul Malone on 11/4/20.
//  Copyright © 2020 Paul Malone. All rights reserved.
//

import Foundation

func insertionSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }  // Get out of here if 0 or 1 element in array
    var sortedArray = array
    
    // Compare element at i with each element to the left until a smaller element is found
    for i in 1..<sortedArray.count {
        var j = i - 1
        if sortedArray[i] < sortedArray[j] {
            sortedArray.swapAt(i, j)
        }
        while j > 0 {   // Keep comparing each element to the left until everything to the left of i is sorted
            if sortedArray[j] < sortedArray[j - 1] {
                sortedArray.swapAt(j, j - 1)
            }
            j -= 1
        }
    }
    return sortedArray
}

func selectionSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }    // Get out of here if there's 0 or 1 element in array
    var sortedArray = array
    
    for i in 0..<sortedArray.count {
        let j = i + 1
        var minIndex = i    // Assume first element is the minimum
        for j in j..<sortedArray.count {
            if sortedArray[minIndex] > sortedArray[j] { // Change min index as we iterate through elements if we find something smaller
                minIndex = j
            }
        }
        sortedArray.swapAt(i, minIndex) // Swap element at i with element at minIndex
    }
    
    return sortedArray
}

/*
 Algorithm
 */
func shellSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }    // Get out of here if there's 0 or 1 element in array
    var sortedArray = array
    
    // gap = 3n + 1
    var gap = (sortedArray.count / 3) + 1
    while gap > 0 {
        
        var j = gap
        while j < sortedArray.count {
            
            var i = j - gap
            while i >= 0 {
                if sortedArray[i + gap] < sortedArray[i] {
                    sortedArray.swapAt(i, i + gap)
                } else {
                    break
                }           // If there is at least gap between i and 0, need to check behind i as well
                i -= gap    // decrease i incase we need to check even farther back
            }
            
            j += 1
        }
        
        if gap == 1 {
            break               // If gap == 1 when we get to this point in the code we already did ran it with gap == 1 so just break
        }
        gap = (gap / 3) + 1     // Set a new gap
        
    }
    
    return sortedArray
}
