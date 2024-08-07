Pod::Spec.new do |s|
  s.name             = 'test_flutter_module'
  s.version          = '2.0.0'
  s.summary          = 'A Flutter module for my iOS app'
  s.description      = <<-DESC
                       Hi this is my new flutter module
                       DESC
  s.homepage    = 'https://github.com/st-97/flutter_module_pod'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Shaikh Taha' => 'shaikhtaha97@gmail.com' }
  s.source           = { :git => 'https://github.com/st-97/flutter_module_pod.git',:tag => '2.0.0'}

  s.platform     = :ios, '10.0'
  s.source_files = '.ios/Runner/**/*.{swift,h,m}'
  s.dependency 'Flutter'
end
