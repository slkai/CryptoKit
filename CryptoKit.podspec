Pod::Spec.new do |s|
  s.name             = "CryptoKit"
  s.summary          = "CommonCrypto in Swift"
  s.version          = "0.0.1"
  s.homepage         = "https://www.github.com/"
  s.license          = 'MIT'
  s.author           = { "alan" => "alandeng@meijiabang.cn" }
  s.source           = {
    :git => "https://github.com/slkai/CryptoKit.git",
    :tag => s.version.to_s
  }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.2'
  s.watchos.deployment_target = '3.0'

  s.requires_arc = true

  s.source_files = 'Sources/**/*'

  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS[sdk=macosx*]'           => '$(PODS_ROOT)/CryptoKit/Sources/ModuleMaps/macosx',
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_ROOT)/CryptoKit/Sources/ModuleMaps/iphoneos',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/CryptoKit/Sources/ModuleMaps/iphonesimulator',
    'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'        => '$(PODS_ROOT)/CryptoKit/Sources/ModuleMaps/appletvos',
    'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_ROOT)/CryptoKit/Sources/ModuleMaps/appletvsimulator',
    'SWIFT_INCLUDE_PATHS[sdk=watchos*]'          => '$(PODS_ROOT)/CryptoKit/Sources/ModuleMaps/watchos',
    'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'   => '$(PODS_ROOT)/CryptoKit/Sources/ModuleMaps/watchsimulator'
  }



end
