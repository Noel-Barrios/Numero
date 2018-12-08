//
//  ConverterTests.swift
//  NumeroTests
//
//  Created by Barrios, Noel on 12/5/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import XCTest
// this gives the unit tests access to the classes and methods in Numero
@testable import Numero

// This initializes a new converter object that you'll use throughout your tests.
let converter = Converter()
class ConverterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // the test calls convert an stores the result
    func testConversionForOne() {
        let result = converter.convert(1)
        // Asserts that two expressions have the same value, the third argument is an optional description fof the failure.
        // generates a failure when expression1 != expression2
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }
    
    func testConversionForTwo() {
        let result = converter.convert(2)
        XCTAssertEqual(result, "II", "Conversion for 2 is incorrect")
    }
    
    // we will be skipping testing number 3 because it should pass based on the code we already wrote
    
    // we will skip testing 4 for now, because it's a special case that we'll deal with later
    
    func testConversionForFive() {
        let result = converter.convert(5)
        XCTAssertEqual(result, "V", "Conversion for 5 is incorrect")
    }
    
    
    func testConversionForSix() {
        let result = converter.convert(6)
        XCTAssertEqual(result, "VI", "Conversion for 6 is incorrect")
    }

    
}
