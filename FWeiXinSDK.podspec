Pod::Spec.new do |s|
  s.name         = "FWeiXinSDK"
  s.version      = "1.0.0"

  s.summary      = "微信 WechatSDK 1.7.8"
  s.description  = <<-DESC
       WechatSDK 1.7.8,方便自己更新
                   DESC
  s.homepage     = "https://open.weixin.qq.com"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
        Copyright (c) 2017 Tencent. All rights reserved.
        LICENSE
}
  s.author       = { "Fmyz" => "https://cocoapods.org/pods/FWeiXinSDK" }

  s.platform     = :ios,'8.0'
  s.source       = { :git => "https://github.com/Fmyz/FWeiXinSDK.git", :tag => "#{s.version}" }

  s.source_files = "SDKExport/*.h"

  s.libraries = 'z', 'sqlite3.0', 'c++'
  s.vendored_libraries = 'SDKExport/libWeChatSDK.a'
  s.framework    = "CoreTelephony", "Security", "SystemConfiguration"

  s.requires_arc = true

end
