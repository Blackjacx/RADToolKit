import Foundation
import Quick
import Nimble

@testable import RADToolKit

class BundleVersioningSpec: QuickSpec {

    override func spec() {

        describe("Bundle") {

            let bundle = Bundle(for: type(of: self))
            let marketingVersion = bundle.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
            let bundleVersion = bundle.bundleVersion
            let bundleName =  bundle.object(forInfoDictionaryKey: kCFBundleNameKey as String) as! String

            context("calling versionName") {

                it("can return marketing version only") {
                    expect(bundle.versionString(shouldIncludeBundleVersion: false)) == marketingVersion
                }

                it("can return marketing version concatenated with build number") {
                    expect(bundle.versionString(shouldIncludeBundleVersion: true))  == "\(marketingVersion) (\(bundleVersion))"
                }

                it("returns marketing version by default") {
                    expect(bundle.versionString()) == "\(marketingVersion) (\(bundleVersion))"
                }
            }

            context("calling applicationName") {

                it("returns the bundle name by default") {
                    expect(bundle.applicationName) == bundleName
                }

                it("returns an empty string when nothing is entered in plist") {
                    expect(Bundle().applicationName) == ""
                }
            }

            context("calling bundleVersion") {

                it("returns the bundle version by default") {
                    expect(bundle.bundleVersion) == bundleVersion
                }

                it("returns 1 when nothing is entered in plist") {
                    expect(Bundle().bundleVersion) == "1"
                }
            }
        }
    }
}
