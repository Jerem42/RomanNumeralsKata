//
//  RomanNumerals.swift
//  RomanNumeralsKata
//
//  Created by Jeremy on 13/04/2018.
//  Copyright © 2018 Jeremy. All rights reserved.
//

import Foundation

struct RomanNumerals {
    func convert(number: Int) -> String {
        if number == 1000 {
            return "M"
        } else if number == 500 {
            return "D"
        } else if number == 100 {
            return "C"
        } else if number == 50 {
            return "L"
        } else if number == 10 {
            return "X"
        } else if number == 5 {
            return "V"
        }
        return "I"
    }
}
