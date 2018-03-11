//
//  UserDefaults+Extensions.swift
//  RADToolKit_Example
//
//  Created by Stefan Herold on 11.03.18.
//  Copyright © 2018 CodingCobra. All rights reserved.
//

import Foundation

extension UserDefaults {

    public subscript(key: String) -> Any? {
        get { return value(forKey: key) }
        set { set(newValue, forKey: key) }
    }

    public subscript(key: String) -> Bool {
        get { return bool(forKey: key) }
        set { set(newValue, forKey: key) }
    }
}
