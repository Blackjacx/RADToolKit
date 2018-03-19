//
//  Bundle+Versioning.swift
//  RADToolKit
//
//  Created by Stefan Herold on 11.03.18.
//  Copyright © 2018 CodingCobra. All rights reserved.
//

import Foundation

extension Bundle {

    /// Returns the applications name as specified in the Info.plist
    public var applicationName: String {

        guard let name = object(forInfoDictionaryKey: kCFBundleNameKey as String) as? String else {
            return ""
        }
        return String.trim(name)
    }

    public func versionString(shouldIncludeBundleVersion: Bool = true) -> String {

        var components: [String] = []

        if let marketingVersion = object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String {
            let trimmed = String.trim(marketingVersion)
            components.append(trimmed)
        }
        if shouldIncludeBundleVersion {
            components.append("(\(bundleVersion))")
        }
        return components.joined(separator: " ")
    }

    /// Returns the currently set bundle version, often referred to as build number. If nothing could be found a
    /// value of `1` is returnes. Setting a value of `1` and lett the CI set the final bundle version can be used to
    /// detect local deug builds.
    var bundleVersion: String {

        guard let version = object(forInfoDictionaryKey: kCFBundleVersionKey as String) as? String else {
            return "1"
        }
        return String.trim(version)
    }
}
