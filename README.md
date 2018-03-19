
<!-- <p align="center">
<img src="./icon.png" alt="RADToolKit" height="128" width="128">
</p> -->

<h1 align="center">RADToolKit</h1>

<p align="center">
  <a href="https://github.com/Blackjacx/RADToolKit"><img alt="Build Status" src="https://www.bitrise.io/app/3f56d3184d9bfe3f/status.svg?token=njkTWQtcLiw7NPHxUQmZsA&branch=develop"/></a>
  <a href="http://cocoadocs.org/docsets/RADToolKit"><img alt="Version" src="https://cocoapod-badges.herokuapp.com/v/RADToolKit/badge.svg"/></a>
  <img alt="Xcode 9.0+" src="https://img.shields.io/badge/Xcode-9.0%2B-blue.svg"/>
  <img alt="iOS 9.0+" src="https://img.shields.io/badge/iOS-9.0%2B-blue.svg"/>
  <img alt="Swift 4.0+" src="https://img.shields.io/badge/Swift-4.0%2B-orange.svg"/>
  <!-- <a href="https://github.com/Carthage/Carthage"><img alt="Carthage compatible" src="https://img.shields.io/badge/Carthage-Compatible-brightgreen.svg?style=flat"/></a> -->
  <a href="https://github.com/Blackjacx/RADToolKit/blob/master/LICENSE?raw=true"><img alt="License" src="https://img.shields.io/cocoapods/l/RADToolKit.svg?style=flat"/></a>
  <!-- <a href="https://codecov.io/gh/blackjacx/RADToolKit"><img alt="Codecov" src="https://codecov.io/gh/blackjacx/RADToolKit/branch/master/graph/badge.svg"/></a> -->
  <a href="https://codebeat.co/projects/github-com-blackjacx-radtoolkit-develop"><img alt="codebeat badge" src="https://codebeat.co/badges/521ec3c7-42d2-4823-bc36-cef6a829b314" /></a>
  <a href="http://cocoadocs.org/docsets/RADToolKit/"><img alt="Downloads" src="https://img.shields.io/cocoapods/dt/RADToolKit.svg?maxAge=3600&style=flat" /></a>
  <a href="https://www.paypal.me/STHEROLD"><img alt="Donate" src="https://img.shields.io/badge/Donate-PayPal-blue.svg"/></a>
</p>

Tired of creating all the boilerplate code from scratch every time you start a 
new project? Here is your solution. A tool set that implements all the 
functionality needed to create a basic app in only one week that will impress 
your customers. Start your Rapid Application Development NOW and be lightning 
fast with RADToolKit.

## Example

To run the example project, just type `pod try RADToolKit` in your console.

## Installation

RADToolKit is compatible with `iOS 9.0` or higher and builds with `Xcode 9` 
and `Swift 4` syntax. It is available through [CocoaPods](http://cocoapods.org). 
To install it, simply add the following line to your Podfile:

```ruby
pod "RADToolKit"
```

## Components

### Cryptography

Support for all kinds of cryptographic functions using the 
[CryptoSwift](https://github.com/krzyzanowskim/CryptoSwift) dependency. Have a 
look on this site to find out more about the framework possibilities.

### Foundation

#### Bundle+Versioning.swift

The `Bundle` extension provides you with functions to obtain information like 
versionString and appName which is specified in the Info.plist.

#### String+Extensions.swift

Support for subscripting, truncation / simple 
replacements, length checks that handle optional strings so you don't need to 
check for that and various random text generators.

#### UserDefaults+Extensions.swift

Support for accessing the user defaults via subscripts.

### UIKit

#### NSAttributedString+Extensions.swift

Support for concatenating NSAttributedString objects while retaining the 
attributes of the single components.

## Contribution

- If you found a **bug**, open an **issue**
- If you have a **feature request**, open an **issue**
- If you want to **contribute**, submit a **pull request**

## Author

Stefan Herold, stefan.herold@gmail.com

## License

RADToolKit is available under the MIT license. See the LICENSE file for more 
info.
