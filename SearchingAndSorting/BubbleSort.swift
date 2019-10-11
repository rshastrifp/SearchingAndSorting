//
//  BubbleSort.swift
//  SearchingAndSorting
//
//  Created by Ronak Shastri on 2019-10-04.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation


func bubbleSort(array: [Int]) -> [Int] {
    var arrayVar = array
    var upperLimit = arrayVar.count-2
    
    for _ in 0...arrayVar.count-1 {
        for i in 0...upperLimit {
            var temp = 0
            
            if arrayVar[i] > arrayVar[i+1] {
                temp = arrayVar[i]
                arrayVar[i] = arrayVar[i+1]
                arrayVar[i+1] = temp
            }
        }
        upperLimit -= 1
        if upperLimit < 0 {
            break
        }
    }
    return arrayVar
}
