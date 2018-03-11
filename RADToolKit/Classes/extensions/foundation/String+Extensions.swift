//
//  String+Extensions.swift
//  RADToolKit
//
//  Created by Stefan Herold on 11.03.18.
//  Copyright © 2018 CodingCobra. All rights reserved.
//

import Foundation

extension String {

    /// Trims new lines and whitespaces from the beginning and end of a given string.
    ///
    /// - parameter text: The input string that should be trimmed
    /// - returns: The trimmed input string or an empty string if the input string is nil
    public static func trim(_ text: String?) -> String {
        
        return (text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
    }

    /// Iterates over a srting and removes everything except digits.
    /// - parameter text: An optional string that will be converted to a digits-only string.
    /// - returns: A non-optional String that might be empty
    public static func stripAllButDigits(fromText text: String?) -> String {

        let nonDigitsCharset = CharacterSet.decimalDigits.inverted
        let components = text?.components(separatedBy: nonDigitsCharset )
        let stripped = components?.joined()
        return stripped ?? ""
    }

    /// Handy function to capitalize only the first letter of a string
    public func capitalizingFirstLetter() -> String {

        let first = String(prefix(1)).capitalized
        let other = String(dropFirst())
        return first + other
    }
}
