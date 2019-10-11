//
//  BubbleSortTests.swift
//  SearchingAndSortingTests
//
//  Created by Ronak Shastri on 2019-10-04.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

import XCTest
@testable import SearchingAndSorting

class BubbleSortTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBubbleSort() {
        let array = [10,14,13,12,11]
        
        let result = bubbleSort(array: array)
        XCTAssert(result == array.sorted(), "Failed sorting")
        
    }

}
