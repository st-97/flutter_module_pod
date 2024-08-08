#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint my_plugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'my_plugin'
  s.version          = '3.0.0'
  s.summary          = 'A Flutter plugin that integrates a native iOS view.'
  s.description      = <<-DESC
  A Flutter plugin that integrates a native iOS view into your Flutter application.
  This plugin allows you to display and customize a native view, providing better interaction
  between your Flutter app and the native iOS code. It includes methods to set text in the native view
  and demonstrates how to bridge Flutter and native code seamlessly.
  DESC
  s.homepage         = 'http://example.com'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Shaikh Taha' => 'shaikhtaha97@gmail.com' }
  s.source           = { :git => 'https://github.com/st-97/flutter_module_pod.git',:tag => '3.0.0'}
  s.exclude_files    = 'example/ios/Classes/**/*.{swift,h,m}'
  s.source_files = 'ios/Classes/**/*.{swift,h,m}'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
