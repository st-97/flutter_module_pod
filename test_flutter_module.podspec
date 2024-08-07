Pod::Spec.new do |s|
  s.name             = 'my_flutter_module'
  s.version          = '1.0.0'
  s.summary          = 'A Flutter module for my iOS app'
  s.description      = <<-DESC
                       Hi this is my new flutter module
                       DESC
  s.homepage    = 'https://github.com/your-username/your-module'
  s.license     = { :type => 'MIT' }
  s.author           = { 'Shaikh Taha' => 'shaikhtaha97@gmail.com' }
  s.source           = { :git => 'https://github.com/st-97/flutter_module_pod.git'}

  s.platform     = :ios, '10.0'
  s.source_files = 'Classes/**/*.{swift,h,m}'
  s.dependency 'Flutter'
end
