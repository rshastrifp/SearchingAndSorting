//
//  QuickSortTests.swift
//  SearchingAndSortingTests
//
//  Created by Ronak Shastri on 2019-10-04.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

import Foundation

import XCTest
@testable import SearchingAndSorting

class QuickSortTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testQuickSort() {
        // Test case
        var testArray = [14,13,12,11]
        var testCase = [14, 4, 1, 3, 9, 20, 25, 6, 22, 21]
        var testCase3 = [11,12,13,14]
        
        let result = quicksort(testArray, low: 0, high: testArray.count-1)
        XCTAssert(result == testArray.sorted(), "Failed quick sort test.")
    }

}
