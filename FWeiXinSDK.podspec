#cocoa pods pesc文件创建
#pod spec create FWeiXinSDK(文件名)
#打开方式 选Xcode
#s.source_files指向循环滚动的核心代码放在项目的FWeiXinSDK/SDKExport/*.{h,m}
#s.libraries  表示这个pod依赖的 苹果官方的库，也就是类似libstdc++.a ,libsqlite.a 等等的a文件
#s.vendored_libraries 就表示用户自己的a文件，比如新浪微博SDK的libWeiboSDK.a
#s.frameworks 表示pod依赖的 苹果的framework， 比如 UIKit，SystemConfiguration等等
#s.vendored_frameworks， 表示pod依赖的自己的framework，比如qqSDK的TencentOpenAPI.framework
#s.dependency 'JSONKit', '~> 1.4' 依赖的第三方库
#s.dependency 'XXXX', '~> XX' 依赖的第三方库,有几个写几个
#Pod 验证
#pod lib lin



Pod::Spec.new do |s|
  s.name         = "FWeiXinSDK"
  s.version      = "0.0.1"

  s.summary      = "微信 WechatSDK 1.7.3"
  s.description  = <<-DESC
       WechatSDK 1.7.3,方便自己更新
                   DESC
  s.homepage     = "https://open.weixin.qq.com"
  s.license      = "MIT"
  s.author       = { "Fmyz" => "https://open.weixin.qq.com" }

  s.platform     = :ios,'8.0'
  s.source       = { :git => "https://github.com/Fmyz/FWeiXinSDK.git", :tag => "#{s.version}" }
  s.source_files = "FWeiXinSDK/SDKExport/*.h"
  s.public_header_files = 'FWeiXinSDK/SDKExport/WXApi.h', 'FWeiXinSDK/SDKExport/WechatAuthSDK.h'

  s.libraries = 'z', 'sqlite3.0'
  s.vendored_libraries = 'WeChatAPI/SDKExport/libWeChatSDK.a'
  s.framework    = "CoreTelephony", "Security", "SystemConfiguration"

  s.requires_arc = true

end
