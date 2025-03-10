platform :ios, '13.0'
use_frameworks!

target 'YQEditImage' do
pod 'SnapKit'
pod 'BmobSDK', '2.4.2'
pod 'ObjectMapper', '~> 4.0.0'
pod 'SwiftyJSON', '5.0.0'
end
post_install do |installer|
   installer.generated_projects.each do |project|
    project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
         end
    end
  end
end
