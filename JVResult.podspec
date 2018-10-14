

Pod::Spec.new do |s|
  s.name             = 'JVResult'
  s.version          = '0.1.2'
  s.summary          = 'Generic result sets with can contain an error or data'
  s.homepage         = 'https://github.com/Jasperav/JVResult'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jasperav' => 'Jasperav@hotmail.com' }
  s.source           = { :git => 'https://github.com/Jasperav/JVResult.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'JVResult/Classes/**/*'
end
