
Pod::Spec.new do |s|
  s.name             = 'flutter_plugin'
  s.version          = '5.0.0'
  s.summary         = 'A Flutter plugin to integrate custom native views.'

  s.description     = <<-DESC
                      This is a Flutter plugin that provides a custom platform view for iOS.
                      It allows you to pass text and color parameters to be displayed natively.
                      DESC

  s.homepage        = 'https://example.com'
  s.license         = { :type => 'MIT', :file => 'LICENSE' }
  s.author          = { 'Your Name' => 'your_email@example.com' }
  s.platform        = :ios, '14.0'
  s.source          = { :git => 'https://github.com/st-97/flutter_module_pod.git', :tag => s.version.to_s }
  s.requires_arc     = true
  
  # Include both xcframeworks
  s.vendored_frameworks = ['Frameworks/app.xcframework', 'Frameworks/Flutter.xcframework']
  
  s.swift_versions   = ['5.0']
  s.requires_arc     = true
end
