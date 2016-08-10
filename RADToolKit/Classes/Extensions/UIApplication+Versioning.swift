//
//  UIApplication+Versioning.swift
//  RADToolKit
//
//  Created by Stefan Herold on 10/08/16.
//
//

import UIKit

extension UIApplication {
    public class func appVersionString(includeBuildNumber: Bool = true) -> String {
        var components = [String]()

        if let marketingVersion = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleShortVersionString") {
            components.append("\(marketingVersion)")
        }
        if includeBuildNumber {
            if let buildNumber = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleVersion") {
                components.append("(\(buildNumber))")
            }
        }
        return components.joinWithSeparator(" ")
    }
}