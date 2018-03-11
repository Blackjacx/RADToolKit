import Foundation
import Quick
import Nimble

@testable import RADToolKit

class StringExtensionsSpec: QuickSpec {

    override func spec() {

        describe("String") {

            context("capitalizing first letter") {

                let testString = "a1234567890iuzfgfcv,mn ,vjfdughvbkjnklm ,"

                it("leaves all characters except the first untouched") {
                    let capitalized = testString.capitalizingFirstLetter()
                    expect(testString.dropFirst()) == capitalized.dropFirst()
                }

                it("capitalizes only the first letter") {
                    let capitalized = testString.capitalizingFirstLetter()
                    expect(String(capitalized.first!)) == String(testString.first!).uppercased()
                }
            }

            context("trim string") {

                let testString = " a1234567890iuzfgfcv,mn ,vjfdughvbkjnklm # \n"

                it("reduces string by 3 invalid characters") {
                    let trimmed = String.trim(testString)
                    expect(trimmed).to(haveCount(testString.count - 3))
                }

                it("starts with a") {
                    let trimmed = String.trim(testString)
                    expect(trimmed.first) == "a"
                }

                it("starts with hash") {
                    let trimmed = String.trim(testString)
                    expect(trimmed.last) == "#"
                }

                it("returns empty string if input nil") {
                    let trimmed = String.trim(nil)
                    expect(trimmed) == ""
                }
            }

            context("strip all but digits") {

                let testString = " a123456789iuzfgfcv,mn ,vjfdughvb0kjnkm # \n"

                it("removes all nondigit characters") {
                    let stripped = String.stripAllButDigits(fromText: testString)
                    expect(stripped) == "1234567890"
                }

                it("returns empty string if input nil") {
                    let stripped = String.stripAllButDigits(fromText: nil)
                    expect(stripped) == ""
                }
            }
        }
    }
}
