#
# Be sure to run `pod lib lint SingleLineInput.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "SingleLineInput"
  s.version          = "1.0.5"
  s.summary          = "A single line textfield with float label animation."
  s.description      = <<-DESC
                       It's an implementation of Telegram text field used on https://web.telegram.org
                       * Custom input with one line
                       * Place holder animation with float label animation
                       DESC
  s.homepage         = "https://github.com/diogomaximo/SingleLineInput"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Diogo Maximo" => "dcmaximo@gmail.com" }
  s.source           = { :git => "https://github.com/diogomaximo/SingleLineInput.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/dcmaximo'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SingleLineInput' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
