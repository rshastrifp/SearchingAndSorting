//
//  QuickSortTests.swift
//  SearchingAndSortingTests
//
//  Created by Ronak Shastri on 2019-10-04.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

import XCTest
@testable import SearchingAndSorting

class MergeSortTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMergeSort() {
        let array1 = [10,14,13,12,11]
        let array2 = [21,4,1,3,9,20,25]
        let array3 = [10,14,13]
        let array4 = [1,1,1,1,1,1,1,1,1,1]
        
        let result = mergeSort(array: array2)
        XCTAssert(result == array2.sorted(), "Failed sorting")
        
    }

}
