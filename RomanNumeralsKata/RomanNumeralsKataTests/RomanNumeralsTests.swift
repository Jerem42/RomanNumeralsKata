//
//  RomanNumeralsKataTests.swift
//  RomanNumeralsKataTests
//
//  Created by Jeremy on 13/04/2018.
//  Copyright © 2018 Jeremy. All rights reserved.
//

import XCTest
@testable import RomanNumeralsKata

class RomanNumeralsTests: XCTestCase {

    // Subject under test
    var sut: RomanNumerals!
    
    override func setUp() {
        super.setUp()

        sut = RomanNumerals()
    }

    // MARK: - Tests

    func testConvert_should_return_I_when_input_is_1() {
        // When
        let result = sut.convert(number: 1)

        // Then
        XCTAssertEqual(result, "I")
    }

    func testConvert_should_return_V_when_input_is_5() {
        // When
        let result = sut.convert(number: 5)

        // Then
        XCTAssertEqual(result, "V")
    }

    func testConvert_should_return_X_when_input_is_10() {
        // When
        let result = sut.convert(number: 10)

        // Then
        XCTAssertEqual(result, "X")
    }

    func testConvert_should_return_L_when_input_is_50() {
        // When
        let result = sut.convert(number: 50)

        // Then
        XCTAssertEqual(result, "L")
    }

    func testConvert_should_return_C_when_input_is_100() {
        // When
        let result = sut.convert(number: 100)

        // Then
        XCTAssertEqual(result, "C")
    }

    func testConvert_should_return_D_when_input_is_500() {
        // When
        let result = sut.convert(number: 500)

        // Then
        XCTAssertEqual(result, "D")
    }

    func testConvert_should_return_M_when_input_is_1000() {
        // When
        let result = sut.convert(number: 1000)

        // Then
        XCTAssertEqual(result, "M")
    }
}
