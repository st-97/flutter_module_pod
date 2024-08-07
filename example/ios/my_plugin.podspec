#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint my_plugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'my_plugin'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Shaikh Taha' => 'shaikhtaha97@gmail.com' }
  s.source       = { :git => 'https://github.com/st-97/flutter_module_pod.git', :tag => '0.0.1'} 
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
