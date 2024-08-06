Pod::Spec.new do |s|
  s.name             = 'my_flutter_module'
  s.version          = '1.0.0'
  s.summary          = 'A Flutter module for my iOS app'
  s.description      = <<-DESC
                       Hi this is my new flutter module
  s.homepage         = 'https://google.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Shaikh Taha' => 'shaikhtaha97@gmail.com' }
  s.source           = { :git => 'https://github.com/your_github_username/my_flutter_module.git', :tag => s.version.to_s }

  s.source_files = 'lib/**/*'
  s.dependency 'Flutter'
  
  s.platform     = :ios, '9.0'
  s.vendored_frameworks = 'ios/Flutter/App.framework'
  s.vendored_frameworks = 'ios/Flutter/Flutter.framework'
  
  s.xcconfig = {
    'ENABLE_BITCODE' => 'NO',
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/my_flutter_module/ios/Flutter'
  }
end
