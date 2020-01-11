#
# Be sure to run `pod lib lint LMCFoundation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LMCFoundation'
  s.version          = '0.1.1'
  s.summary          = 'LMCFoundation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Focus on Foundation layer.
                       DESC

  s.homepage         = 'https://github.com/Lyman92/LMCFoundation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lyman' => 'm18396531029@163.com' }
  s.source           = { :git => 'https://github.com/Lyman92/LMCFoundation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LMCFoundation/Classes/*'
  
  s.subspec 'LMCCategories' do |categories|
     categories.source_files = 'LMCFoundation/Classes/LMCCategories/**/*', 'LMCFoundation/Classes/LMCCategories/*'
  end
  
  # s.resource_bundles = {
  #   'LMCFoundation' => ['LMCFoundation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
