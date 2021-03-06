#
#  Be sure to run `pod spec lint Sigmob-iOS-SDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "SigmobAd-iOS"
  spec.version      = "3.2.0"
  spec.summary      = "WindSDK is a SDK from Sigmob providing AD service."
  
  spec.description      = <<-DESC
  Sigmob provides ADs which include splash、RewardVideo etc.
                       DESC

  spec.homepage     = "http://www.sigmob.com/"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { "Codi" => "codi.zhao@sigmob.com" }
  spec.platform     = :ios, "8.0"
  spec.ios.deployment_target = '8.0'
  spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  spec.source       = { :git => "https://github.com/Sigmob/iOS-SDK.git", :tag => "#{spec.version}" }
  
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  spec.requires_arc = true
  spec.default_subspec = 'WindSDK'

  # 默认的核心模块
  spec.subspec 'WindSDK' do |ss|
    ss.frameworks = 'ImageIO','StoreKit', 'CFNetwork', 'CoreMedia', 'AdSupport', 'CoreMotion', 'MediaPlayer', 'CoreGraphics', 'AVFoundation', 'CoreLocation', 'CoreTelephony', 'SafariServices', 'MobileCoreServices', 'SystemConfiguration'
    ss.weak_framework = 'WebKit', 'UIKit', 'Foundation'
    ss.libraries = 'c++', 'z', 'sqlite3'
    ss.vendored_frameworks =  'WindSDK/WindSDK.framework'
    ss.resource = 'WindSDK/Sigmob.bundle'
  end


  spec.subspec 'SigmobAdmobAdapter' do |ss|
     ss.ios.deployment_target = '9.0'
     ss.vendored_libraries = 'WindSDK/Admob/*.a'
     ss.dependency 'SigmobAd-iOS/WindSDK'
     ss.dependency 'Google-Mobile-Ads-SDK', '8.5.0'
  end

  spec.subspec 'SigmobAppLovinAdapter' do |ss|
     ss.ios.deployment_target = '9.0'
     ss.vendored_libraries = 'WindSDK/Applovin/*.a'
     ss.dependency 'SigmobAd-iOS/WindSDK'
     ss.dependency 'AppLovinSDK', '10.3.2'
  end

  spec.subspec 'SigmobFacebookAdapter' do |ss|
     ss.ios.deployment_target = '9.0'
     ss.vendored_libraries = 'WindSDK/Facebook/*.a'
     ss.dependency 'SigmobAd-iOS/WindSDK'
     ss.dependency 'FBAudienceNetwork', '6.0.0'
  end

  spec.subspec 'SigmobGDTAdapter' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.vendored_libraries = 'WindSDK/GDT/*.a'
    ss.dependency 'SigmobAd-iOS/WindSDK'
    ss.dependency 'GDTMobSDK', '4.12.71'
  end


  spec.subspec 'SigmobIronSourceAdapter' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.vendored_libraries = 'WindSDK/Ironsource/*.a'
    ss.dependency 'SigmobAd-iOS/WindSDK'
    ss.dependency 'IronSourceSDK', '7.1.6.1'
  end
  

  spec.subspec 'SigmobMintegralAdapter' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.vendored_libraries = 'WindSDK/Mintegral/*.a'
    ss.dependency 'SigmobAd-iOS/WindSDK'
    ss.dependency 'MintegralAdSDK/RewardVideoAd', '6.9.1'
    ss.dependency 'MintegralAdSDK/InterstitialVideoAd', '6.9.1'
    ss.dependency 'MintegralAdSDK/InterstitialAd', '6.9.1'
    ss.dependency 'MintegralAdSDK/SplashAd', '6.9.1'
  end

  spec.subspec 'SigmobTouTiaoAdapter' do |ss|
     ss.ios.deployment_target = '9.0'
     ss.vendored_libraries = 'WindSDK/Toutiao/*.a'
     ss.dependency 'SigmobAd-iOS/WindSDK'
     ss.dependency 'Ads-CN', '3.6.1.5'
  end


  spec.subspec 'SigmobVungleAdapter' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.vendored_libraries = 'WindSDK/Vungle/*.a'
    ss.dependency 'SigmobAd-iOS/WindSDK'
    ss.dependency 'VungleSDK-iOS', '6.9.2'
  end


  spec.subspec 'SigmobUnityAdsAdapter' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.vendored_libraries = 'WindSDK/UnityAds/*.a'
    ss.dependency 'UnityAds', '3.7.2'
    ss.dependency 'SigmobAd-iOS/WindSDK'
  end

  spec.subspec 'SigmobTapjoyAdapter' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.vendored_libraries = 'WindSDK/Tapjoy/*.a'
    ss.dependency 'TapjoySDK', '12.7.0'
    ss.dependency 'SigmobAd-iOS/WindSDK'
  end

  spec.subspec 'SigmobKSAdapter' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.vendored_libraries = 'WindSDK/SigmobKS/*.a'
    ss.dependency 'KSAdSDK', '3.3.10.1'
    ss.dependency 'SigmobAd-iOS/WindSDK'
  end


end
