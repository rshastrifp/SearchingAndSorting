//
//  SearchingAndSortingTests.swift
//  SearchingAndSortingTests
//
//  Created by Ronak Shastri on 2019-09-26.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import XCTest
@testable import SearchingAndSorting

class SearchingAndSortingTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBinarySearch() {
        // Test cases
        let testArray = [1, 3, 9, 11, 15, 19, 25]
        let testVal1 = 25
        let testVal2 = 15
        
        XCTAssertEqual(binarySearch(testArray, value: 25), 6)
        XCTAssertEqual(binarySearch(testArray, value: 15), 4)
        XCTAssertEqual(binarySearch(testArray, value: 1), 0)
        XCTAssertEqual(binarySearch(testArray, value: 11), 3)
        XCTAssertEqual(binarySearch(testArray, value: 29), nil)
        XCTAssertEqual(binarySearch(testArray, value: 20), nil)
        XCTAssertEqual(binarySearch(testArray, value: 0), nil)




//        print(binarySearch(testArray, value: testVal1)) // Should be nil
//        print(binarySearch(testArray, value: testVal2)!) // Should be 4
    }
    
    func testRecursive() {
        let recObj = Recursion()
        let result = recObj.getFib(4)
    }

}
