Pod::Spec.new do |s|
  s.name             = 'YQEditImage'
  s.version          = '1.0.0'
  s.summary          = 'A custom editImage components library'
  s.description      = 'A library that provides custom editImage components for iOS applications'
  s.homepage         = 'https://github.com/maybeYy/YQEditImage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yinshengqi' => '657270302@qq.com' }
  s.source           = { :git => 'https://github.com/maybeYy/YQEditImage', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.source_files = 'YQEditImage/**/*'
  s.swift_versions = '5.5'
  s.static_framework = true
  s.dependency 'SnapKit'
  s.dependency 'BmobSDK','2.4.2'
  s.dependency 'ObjectMapper', '~> 4.0.0'
  s.dependency 'SwiftyJSON', '5.0.0'

  end
