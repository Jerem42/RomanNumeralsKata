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
        if number == 5 {
            return "V"
        }
        return "I"
    }
}
