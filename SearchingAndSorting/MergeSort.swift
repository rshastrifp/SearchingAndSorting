//
//  MergeSort.swift
//  SearchingAndSorting
//
//  Created by Ronak Shastri on 2019-10-04.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation


func mergeSort(array: [Int]) ->  [Int] {
    guard array.count > 1 else { return array }
    
    let midIndex = (0 + (array.count-1))/2
    
    let leftArray =  mergeSort(array: Array(array[0...midIndex]))
    let rightArray = mergeSort(array: Array(array[midIndex+1...array.count-1]))
    
    return mergeTwoSorteArrays(leftArray: leftArray, rightArray: rightArray)
}

func mergeTwoSorteArrays(leftArray: [Int], rightArray:[Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var sortedArray = [Int]()
    
    while (leftIndex < leftArray.count && rightIndex < rightArray.count) {
        if leftArray[leftIndex] > rightArray[rightIndex] {
            sortedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
        else if (leftArray[leftIndex] < rightArray[rightIndex]) {
            sortedArray.append(leftArray[leftIndex])
            leftIndex += 1
        }
        else {
            sortedArray.append(leftArray[leftIndex])
            leftIndex += 1
            sortedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftArray.count {
        sortedArray.append(leftArray[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightArray.count {
        sortedArray.append(rightArray[rightIndex])
        rightIndex += 1
    }
    
    return sortedArray
}
