//
//  Recusrsive.swift
//  SearchingAndSorting
//
//  Created by Ronak Shastri on 2019-10-04.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

class Recursion {
    
    var leftArray = [Int]()
    var rightArray = [Int]()
    
    // Get the fibonacci number at the position in the sequence
    // be sure to check the base case, and recursively call getFib
    public func getFib(_ position: Int) -> Int {
        
        if position == 0 || position == 1 {
            return position
        }
        
        let left = getFib(position-2)
        let right = getFib(position-1)
        
        leftArray.append(left)
        rightArray.append(right)
        
        return left + right
    }

}
