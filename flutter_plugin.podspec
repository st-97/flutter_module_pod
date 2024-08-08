Pod::Spec.new do |s|
  s.name             = 'flutter_plugin'
  s.version          = '4.0.0'
  s.summary         = 'A Flutter plugin to integrate custom native views.'

  s.description     = <<-DESC
                      This is a Flutter plugin that provides a custom platform view for iOS.
                      It allows you to pass text and color parameters to be displayed natively.
                      DESC

  s.homepage        = 'https://example.com'
  s.license         = { :type => 'MIT', :file => 'LICENSE' }
  s.author          = { 'Your Name' => 'your_email@example.com' }
  s.platform        = :ios, '10.0'
  s.source          = { :git => 'https://github.com/st-97/flutter_module_pod.git', :tag => s.version.to_s }
  s.source_files    = 'ios/Classes/**/*'
  s.dependency      'Flutter'
  s.ios.deployment_target = '10.0'

  # If you have additional dependencies for your plugin, add them here
  # s.dependency 'SomeOtherPod'

  # If you have a static framework or binary, specify it here
  # s.vendored_frameworks = 'Frameworks/MyFramework.framework'
end
