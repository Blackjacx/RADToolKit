Pod::Spec.new do |s|
  s.name             = 'RADToolKit'
  s.version          = '1.0.0'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.summary          = 'Tool set that implements all the functionality needed to create a basic app in only one week that will impress your customers.'
  s.description      = <<-DESC
Tired of creating all the boilerplate code from scratch every time you start a new project? Here is your solution. A tool set that implements all the functionality needed to create a basic app in only one week that will impress your customers. Start your Rapid Application Development NOW and be lightning fast with RADToolKit.
                       DESC
  s.homepage         = 'https://github.com/blackjacx/RADToolKit'
  s.social_media_url = 'https://twitter.com/Blackjacxxx'
  s.author           = { 'Stefan Herold' => 'stefan.herold@gmail.com' }
  s.source           = { :git => 'https://github.com/blackjacx/RADToolKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'RADToolKit/Classes/**/*'
  s.dependency 'CryptoSwift'
  
  # s.resource_bundles = {
  #   'RADToolKit' => ['RADToolKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end
