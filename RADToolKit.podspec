#
# Be sure to run `pod lib lint RADToolKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RADToolKit'
  s.version          = '0.9.3'
  s.summary          = 'Tool set that implements all the functionality needed to create a basic app in only one week that will impress your customers.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Tired of creating all the boilerplate code from scratch every time you start a new project? Here is your solution. A tool set that implements all the functionality needed to create a basic app in only one week that will impress your customers. Start your Rapid Application Development NOW and be lightning fast with RADToolKit.
                       DESC

  s.homepage         = 'https://github.com/blackjacx/RADToolKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Stefan Herold' => 'stefan.herold@gmail.com' }
  s.source           = { :git => 'https://github.com/blackjacx/RADToolKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/blackjacxxx'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RADToolKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RADToolKit' => ['RADToolKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~>2.0'
end
