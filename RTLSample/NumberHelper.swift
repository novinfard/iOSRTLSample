//
//  NumberHelper.swift
//  RTLSample
//
//  Created by Soheil  Novinfard on 29/06/2021.
//

import Foundation

extension String {
    var toEnglishNumberInt: Int? {
        let formatter: NumberFormatter = NumberFormatter()
        formatter.locale = NSLocale(localeIdentifier: "EN") as Locale?
        guard let final = formatter.number(from: self) else { return nil }
        return Int(truncating: final)
    }
}

