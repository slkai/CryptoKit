Pod::Spec.new do |s|
  s.name             = "CryptoKit"
  s.summary          = "CommonCrypto in Swift"
  s.version          = "0.0.1"
  s.homepage         = "https://www.github.com/"
  s.license          = 'MIT'
  s.author           = { "alan" => "alandeng@meijiabang.cn" }
  s.source           = {
    :git => "https://github.com/slkai/CryptoKit",
    :tag => s.version.to_s
  }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.2'
  s.watchos.deployment_target = '3.0'

  s.requires_arc = true
  s.source_files = 'Sources/**/*'

  # 需要保留的文件路径
  s.preserve_paths = '${BUILT_PRODUCTS_DIR}/CommonCryptoModuleMap/**/*'

  s.prepare_command = <<-CMD
    if [ -d "${BUILT_PRODUCTS_DIR}/CommonCryptoModuleMap" ]; then
    echo "${BUILT_PRODUCTS_DIR}/CommonCryptoModuleMap directory already exists, so skipping the rest of the script."
    exit 0
    fi

    mkdir -p "${BUILT_PRODUCTS_DIR}/CommonCryptoModuleMap"
    cat <<EOF > "${BUILT_PRODUCTS_DIR}/CommonCryptoModuleMap/module.modulemap"
    module CommonCrypto [system] {
    header "${SDKROOT}/usr/include/CommonCrypto/CommonCrypto.h"
    export *
    }
    EOF
  CMD

  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS' => '${BUILT_PRODUCTS_DIR}/CommonCryptoModuleMap',
    'SWIFT_VERSION' => '4.0'
  }

end
