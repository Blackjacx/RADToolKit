import Foundation
import Quick
import Nimble

@testable import RADToolKit

class UserDefaultsExtensionsSpec: QuickSpec {

    override func spec() {

        describe("UserDefaults") {
            let defaults = UserDefaults.standard
            let key = "USER_DEFAULTS_TEST_VALUE"

            beforeEach {
                defaults.set(nil, forKey: key)
            }

            afterEach {
                defaults.set(nil, forKey: key)
            }

            context("subscripting for object values") {

                let value = "dummy value"

                it("returns nil nothing is set") {
                    expect(defaults[key]).to(beNil())
                }

                it("returns false when nil is set via subscript") {
                    defaults.set(value, forKey: key)
                    defaults[key] = nil
                    expect(defaults.value(forKey: key)).to(beNil())
                }

                it("returns object when object is set") {
                    defaults.set(value, forKey: key)
                    let readValue: Any? = defaults[key]
                    expect(readValue as? String) == value
                }

                it("returns object when object is set by subsript") {
                    defaults[key] = value
                    expect(defaults.object(forKey: key) as? String) == value
                }
            }

            context("subscripting for Bool values") {

                it("returns false if nothing is set") {
                    expect(defaults[key]) == false
                }

                it("returns false when nil is set via subscript") {
                    defaults.set(true, forKey: key)
                    defaults[key] = nil
                    expect(defaults.value(forKey: key)).to(beNil())
                }

                it("returns false when false is set") {
                    defaults.set(false, forKey: key)
                    expect(defaults[key]) == false
                }

                it("returns false when false is set by subsript") {
                    defaults[key] = false
                    expect(defaults.bool(forKey: key)) == false
                }

                it("returns true when true is set") {
                    defaults.set(true, forKey: key)
                    expect(defaults[key]) == true
                }

                it("returns false when false is set by subsript") {
                    defaults[key] = true
                    expect(defaults.bool(forKey: key)) == true
                }
            }
        }
    }
}
