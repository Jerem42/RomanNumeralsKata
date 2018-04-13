//
//  RomanNumerals.swift
//  RomanNumeralsKata
//
//  Created by Jeremy on 13/04/2018.
//  Copyright © 2018 Jeremy. All rights reserved.
//

import Foundation

typealias RomanTuple = (roman: String, numeral: Int)

struct RomanNumerals {
    var romanAssociationArray: [RomanTuple] =
        [
            ("M", 1000),
            ("D", 500),
            ("C", 100),
            ("L", 50),
            ("X", 10),
            ("V", 5),
            ("I", 1)]

    func convert(number: Int) -> String {
        var result = String()
        var remainingNumber = number

        for romanTuple in romanAssociationArray {
            let repeatedRoman = Int(remainingNumber / romanTuple.numeral)
            if repeatedRoman >= 1 {
                result += String(repeating: romanTuple.roman, count: repeatedRoman)
                remainingNumber -= (repeatedRoman * romanTuple.numeral)
            }
        }
        return result
    }
}
