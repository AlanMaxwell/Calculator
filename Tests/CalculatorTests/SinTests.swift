//
//  SinTests.swift
//  
//
//  Created by Alexey Budynkov on 28.01.2023.
//

import XCTest
@testable import Calculator

final class SinTests: XCTestCase {

    var calculator:Calculator = Calculator()
    
    func testCalculateSin() {
        let result = calculator.calculateSin(degrees: 90)
        XCTAssertEqual(result, 1, accuracy: 0.0001, "The result should be 1")
    }

    func testCalculateSinWithNegativeInput() {
        let result = calculator.calculateSin(degrees: -90)
        XCTAssertEqual(result, -1, accuracy: 0.0001, "The result should be -1")
    }

    func testCalculateSinWithZeroInput() {
        let result = calculator.calculateSin(degrees: 0)
        XCTAssertEqual(result, 0, accuracy: 0.0001, "The result should be 0")
    }

}
