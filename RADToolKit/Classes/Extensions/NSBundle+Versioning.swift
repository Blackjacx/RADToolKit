//
//  UIApplication+Versioning.swift
//  RADToolKit
//
//  Created by Stefan Herold on 10/08/16.
//
//

import UIKit

extension NSBundle {
    public func versionString(includeBuildNumber: Bool = true) -> String {
        var components = [String]()

        if let marketingVersion = objectForInfoDictionaryKey("CFBundleShortVersionString") as? String {
            components.append("\(marketingVersion)")
        }
        if includeBuildNumber {
            if let buildNumber = objectForInfoDictionaryKey(kCFBundleVersionKey as String) as? String {
                components.append("(\(buildNumber))")
            }
        }
        return components.joinWithSeparator(" ")
    }
}