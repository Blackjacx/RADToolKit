// https://github.com/Quick/Quick

import UIKit
import Foundation
import Quick
import Nimble
import RADToolKit

class NSBundleVersioningSpec: QuickSpec {
    override func spec() {
        describe("version checks with and without build number") {
            let bundle = NSBundle(forClass: self.dynamicType)
            let version = bundle.objectForInfoDictionaryKey("CFBundleShortVersionString") as! String
            let buildNumber =  bundle.objectForInfoDictionaryKey("CFBundleVersion") as! String

            it("can return version only") {
                expect(bundle.versionString(false)) == version
            }

            it("can return version with build number") {
                expect(bundle.versionString(true)).to(equal("\(version) (\(buildNumber))"))
            }

            it("returns build number by default") {
                expect(bundle.versionString()).to(equal("\(version) (\(buildNumber))"))
            }
        }
    }
}
