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

        for step in 0..<romanAssociationArray.count {
            let repeatedRoman = Int(remainingNumber / romanAssociationArray[step].numeral)
            result += String(repeating: romanAssociationArray[step].roman, count: repeatedRoman)
            remainingNumber %= romanAssociationArray[step].numeral

            for nextStep in (step + 1)..<romanAssociationArray.count {
                let stepDiff = romanAssociationArray[step].numeral - romanAssociationArray[nextStep].numeral
                if stepDiff != romanAssociationArray[nextStep].numeral {
                    if Int(remainingNumber / stepDiff) == 1 {
                        result += romanAssociationArray[nextStep].roman + romanAssociationArray[step].roman
                        remainingNumber %= stepDiff
                    }
                    break
                }
            }
        }
        return result
    }
}
