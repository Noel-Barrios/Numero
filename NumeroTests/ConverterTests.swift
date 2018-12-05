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
        // this uses XCTAssertEqual to check the expected conversion result.
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }
    
}
