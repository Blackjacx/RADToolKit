//
//  NSAttributedString+Extensions.swift
//  RADToolKit
//
//  Created by Stefan Herold on 11.03.18.
//  Copyright © 2018 CodingCobra. All rights reserved.
//

import UIKit

extension NSAttributedString {

    /// Concatenates a given attributed string to the receiver while keeping the attributes of both.
    /// - parameter str: Attributed string to append to the receiver.
    /// - returns: A new attributed string with the attributes of both strings retained.
    public func add(_ str: NSAttributedString) -> NSAttributedString {

        let mutable = NSMutableAttributedString(attributedString: self)
        mutable.append(str)
        return NSAttributedString(attributedString: mutable)
    }
}
