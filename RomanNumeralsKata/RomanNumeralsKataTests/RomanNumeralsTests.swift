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
    var romanNumerals: RomanNumerals!
    
    override func setUp() {
        super.setUp()

        romanNumerals = RomanNumerals()
    }

    // MARK: - Tests

    func test_should_return_I_when_input_is_1() {
        let result = romanNumerals.convert(number: 1)

        XCTAssertEqual(result, "I")
    }

    func test_should_return_V_when_input_is_5() {
        let result = romanNumerals.convert(number: 5)

        // Then
        XCTAssertEqual(result, "V")
    }

    func test_should_return_X_when_input_is_10() {
        let result = romanNumerals.convert(number: 10)

        XCTAssertEqual(result, "X")
    }

    func test_should_return_L_when_input_is_50() {
        let result = romanNumerals.convert(number: 50)

        XCTAssertEqual(result, "L")
    }

    func test_should_return_C_when_input_is_100() {
        let result = romanNumerals.convert(number: 100)

        XCTAssertEqual(result, "C")
    }

    func test_should_return_D_when_input_is_500() {
        let result = romanNumerals.convert(number: 500)

        XCTAssertEqual(result, "D")
    }

    func test_should_return_M_when_input_is_1000() {
        let result = romanNumerals.convert(number: 1000)

        XCTAssertEqual(result, "M")
    }

    func test_should_return_II_when_input_is_2() {
        let result = romanNumerals.convert(number: 2)

        XCTAssertEqual(result, "II")
    }

    func test_should_return_XVI_when_input_is_16() {
        let result = romanNumerals.convert(number: 16)

        XCTAssertEqual(result, "XVI")
    }

    func test_should_return_IV_when_input_is_4() {
        let result = romanNumerals.convert(number: 4)

        XCTAssertEqual(result, "IV")
    }

    func test_should_return_IX_when_input_is_9() {
        let result = romanNumerals.convert(number: 9)

        XCTAssertEqual(result, "IX")
    }

    func test_should_return_XL_when_input_is_40() {
        let result = romanNumerals.convert(number: 40)

        XCTAssertEqual(result, "XL")
    }

    func test_should_return_XC_when_input_is_90() {
        let result = romanNumerals.convert(number: 90)

        XCTAssertEqual(result, "XC")
    }

    func test_should_return_CD_when_input_is_400() {
        let result = romanNumerals.convert(number: 400)

        XCTAssertEqual(result, "CD")
    }

    func test_should_return_CM_when_input_is_900() {
        let result = romanNumerals.convert(number: 900)

        XCTAssertEqual(result, "CM")
    }

    func test_should_return_empty_string_when_input_is_0() {
        let result = romanNumerals.convert(number: 0)

        XCTAssertEqual(result, "")
    }

}
