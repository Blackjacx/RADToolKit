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

                let testString = "+ a123456789iuzfgfcv,mn ,vjfdughvb0kjnkm # \n"

                it("removes all nondigit characters") {
                    let stripped = String.stripAllButDigits(fromText: testString)
                    expect(stripped) == "1234567890"
                }

                it("returns empty string if input nil") {
                    let stripped = String.stripAllButDigits(fromText: nil)
                    expect(stripped) == ""
                }
            }

            context("random string generation") {

                context("using WORDS method") {

                    it("generates exactly 0 words when specifying so") {
                        let result = String.random(using: .words(0))
                        expect(result.count) == 0
                    }

                    it("generates exacly one word when specifying so") {
                        let result = String.random(using: .words(1))
                        expect(result.components(separatedBy: " ").count) == 1
                    }

                    it("generates exacly 1000 words when specifying so") {
                        let result = String.random(using: .words(1000))
                        expect(result.components(separatedBy: " ").count) == 1000
                    }

                    it("generates exacly 0 words when specifying a negative value") {
                        let result = String.random(using: .words(-1))
                        expect(result.count) == 0
                    }
                }

                context("using RANDOMWORDS method") {

                    it("generates 0 words when specifying so") {
                        let result = String.random(using: .randomWords(max: 0))
                        expect(result.count) == 0
                    }

                    it("generates 1 word when specifying so") {
                        let result = String.random(using: .randomWords(max: 1))
                        expect(result.components(separatedBy: " ").count) == 1
                    }

                    it("generates 1 to 2 words when specifying an upper bound of 2") {
                        let result = String.random(using: .randomWords(max: 2))
                        expect(result.components(separatedBy: " ").count) <= 2
                        expect(result.count) >= 1
                    }

                    it("generates 1 to 100000 words when specifying an upper bound of 1000") {
                        let result = String.random(using: .randomWords(max: 1000))
                        expect(result.components(separatedBy: " ").count) <= 1000
                        expect(result.components(separatedBy: " ").count) >= 1
                    }

                    it("generates exacly 0 characters when specifying a negative value") {
                        let result = String.random(using: .randomWords(max: -1))
                        expect(result.count) == 0
                    }
                }

                context("using LENGTH method") {

                    it("generates exactly 0 characters when specifying so") {
                        let result = String.random(using: .length(0))
                        expect(result).to(haveCount(0))
                    }

                    it("generates exacly one characters when specifying so") {
                        let result = String.random(using: .length(1))
                        expect(result).to(haveCount(1))
                    }

                    it("generates exacly 100000 characters when specifying so") {
                        let result = String.random(using: .length(100000))
                        expect(result).to(haveCount(100000))
                    }

                    it("generates exacly 0 characters when specifying a negative value") {
                        let result = String.random(using: .length(-1))
                        expect(result).to(haveCount(0))
                    }
                }

                context("using RANDOMLENGTH method") {

                    it("generates 0 characters when specifying so") {
                        let result = String.random(using: .randomLength(max: 0))
                        expect(result.count).to(equal(0))
                    }

                    it("generates 1 character when specifying so") {
                        let result = String.random(using: .randomLength(max: 1))
                        expect(result.count).to(equal(1))
                    }

                    it("generates 1 to 2 characters when specifying an upper bound of 2") {
                        let result = String.random(using: .randomLength(max: 2))
                        expect(result.count).to(beLessThanOrEqualTo(2))
                        expect(result.count).to(beGreaterThanOrEqualTo(1))
                    }

                    it("generates 1 to 100000 characters when specifying an upper bound of 100000") {
                        let result = String.random(using: .randomLength(max: 100000))
                        expect(result.count).to(beLessThanOrEqualTo(100000))
                        expect(result.count).to(beGreaterThanOrEqualTo(1))
                    }

                    it("generates exacly 0 characters when specifying a negative value") {
                        let result = String.random(using: .randomLength(max: -1))
                        expect(result.count).to(equal(0))
                    }
                }
            }

            context("calling static isEmpty") {

                it("returns true for nil strings") {
                    expect(String.isEmpty(nil)) == true
                }

                it("returns true for empty strings") {
                    expect(String.isEmpty("")) == true
                }

                it("returns false for non-empty strings") {
                    expect(String.isEmpty("abc")) == false
                }
            }

            context("calling static count") {

                it("returns 0 for nil strings") {
                    expect(String.count(nil)) == 0
                }

                it("returns 0 for empty strings") {
                    expect(String.count("")) == 0
                }

                it("returns correct value for non-empty strings") {
                    expect(String.count("abc")) == 3
                }
            }

            context("reading via subscript") {

                it("returns the correct character from a string") {
                    let testString = "abcdef"
                    expect(testString[0]) == testString.first
                    expect(testString[testString.count-1]) == testString.last
                }

                it("returns the correct substring from a string") {
                    let testString = "abcdef"
                    expect(testString[0]) == String(testString.first!)
                    expect(testString[testString.count-1]) == String(testString.last!)
                }
            }
        }
    }
}
