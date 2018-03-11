import UIKit
import Quick
import Nimble

@testable import RADToolKit

class NSAttributesStringExtensionsSpec: QuickSpec {

    override func spec() {

        describe("NSAttributesString") {

            context("calling add") {

                it("concatenates the given string to the receiver") {
                    let prefix = NSAttributedString(string: "Hello")
                    let suffix = NSAttributedString(string: " World!")
                    expect(prefix.add(suffix)) == NSAttributedString(string: "Hello World!")
                }

                it("leaves the attributes of the string components untouched") {
                    let prefixAttrib: [NSAttributedStringKey : Any] = [.font : UIFont.systemFont(ofSize: 11)]
                    let suffixAttrib: [NSAttributedStringKey : Any] = [.backgroundColor : UIColor.red]
                    let prefix = NSAttributedString(string: "Hello", attributes: prefixAttrib)
                    let suffix = NSAttributedString(string: " World!", attributes: suffixAttrib)
                    let appended = prefix.add(suffix)
                    expect(appended.attributedSubstring(from: NSRange(location: 0, length: prefix.string.count))) == prefix
                    expect(appended.attributedSubstring(from: NSRange(location: prefix.string.count, length: suffix.string.count))) == suffix
                }
            }
        }
    }
}

