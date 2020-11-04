//
//  PMUnionFind.swift
//  PMAlgs
//
//  Created by Paul Malone on 10/17/18.
//  Copyright © 2018 Paul Malone. All rights reserved.
//

import Foundation
/*
 Union find is a way to connect integer components. The index of the array is an identifier and the value at the index is what indicates which connected component that index belongs to. Indices with the same value are connected.
            Index: [0, 1, 2, 3, 4, 5, 6]
            Value: [0, 0, 0, 1, 1, 2, 2]
 Connected Groups: [-------][----][----]
 */
public class UnionFind {
    // Properties
    private var count: Int
    private var id: [Int]
    private let size: Int

    // Create UF object size n
    public init(_ n: Int) {
        size = n
        count = n
        id = []
        for i in 0..<n {
            id.append(i)//[i] = i
        }
    }
    
    // Connect p and q
    public func union(_ p: Int, _ q: Int) /*throws*/ {
        let pID = id[p]
        let qID = id[q]

        if pID == qID {         // If p and q have the same id, stop
            return
        }
        
        for i in 0..<size {             // Otherwise, change everything that has the same id as p to the id of q
            if id[i] == pID {     // Puting them in the same component
                id[i] = qID
                print(id[i])
            }
        }
        count -= 1      // There is one fewer compontents, so subtract 1 from count
        
    }
    
    // Return true if p and q are connected
    // If p and q are in the same component, id[p] and id[q] will be equal
    public func connected(p: Int, q: Int) /*throws*/ -> Bool {
        return id[p] == id[q]
    }
    
    // Return component ID for p
    public func find(_ p: Int) /*throws*/ -> Int {
        return id[p]
    }
    
    // The number of components
    func getCount() -> Int {
        return count
    }
    
}
