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

}
