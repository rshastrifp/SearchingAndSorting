//
//  QuickSort.swift
//  SearchingAndSorting
//
//  Created by Ronak Shastri on 2019-10-04.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

func quicksort(_ input: [Int], low: Int, high: Int) -> [Int] {
    var result = input

    if low < high {
        let pivot = result[high]
        var i = low

        for j in low..<high {
            if result[j] <= pivot {
                (result[i], result[j]) = (result[j], result[i])
                i += 1
            }
        }
        (result[i], result[high]) = (result[high], result[i])
        result = quicksort(result, low: low, high: i - 1)
        result = quicksort(result, low: i + 1, high: high)
    }

    return result
}
