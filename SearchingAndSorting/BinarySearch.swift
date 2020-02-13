//
//  BinarySearch.swift
//  SearchingAndSorting
//
//  Created by Ronak Shastri on 2019-09-26.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

// Return the index in the array, of the desired value
// If the value can't be found, return nil
func binarySearch(_ array: [Int], value: Int) -> Int? {
    var min = 0
    var max = array.count-1
    var  focus = min + max / 2
    
    while array[focus] != value {
        if array[focus] < value {
            min = focus
        }
        else {
            max = focus
        }
        focus = (min + max )/2
        
        if focus == min || focus == max {
            if array[min] == value {
                return min
            }
            else if array[max] == value {
                return max
            }
            else {
                return nil
            }
        }
    }
    return focus
}
