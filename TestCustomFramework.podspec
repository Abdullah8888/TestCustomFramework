
Pod::Spec.new do |s|
  s.name             = 'TestCustomFramework'
  s.version          = '0.1.5'
  s.summary          = 'Example Swift framework that supports CocoaPods, Carthage, Swift Package Manager and Fastlane for automating release and Travis for CI'
  s.description      = "Creating Swift framework is easy but adding CocoaPods, Carthage and Swift Package Manager support at the same time can sounds like scary in the first place. In addition to that adding Fastlane to automate release processes for all dependency managers and adding Travis to run test for all commits looks like a horror movie. But Don't be afraid. After you finished this article, you can easily create your own Swift frameworks that uses all these tools to make it perfect."
  s.homepage         = 'https://github.com/Abdullah8888/TestCustomFramework'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Abdullah8888' => 'abdullahijimoh3.ja@gmail.com' }
  s.source           = { :git => 'https://github.com/Abdullah8888/TestCustomFramework.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.swift_version = ['5.0', '5.1', '5.2']
  s.source_files = 'TestCustomFramework/Classes/**/*'
  s.dependency  'Alamofire'
end
