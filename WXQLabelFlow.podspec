
Pod::Spec.new do |s|

  s.name         = "WXQLabelFlow"
  s.version      = "0.0.1"
  s.summary      = "a LabelFlow."

  s.description  = <<-DESC
          WXQLabelFlow is a LabelFlow.
                   DESC

  s.homepage     = "https://github.com/wuyukobe24/WXQLabelFlow"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "wuyukobe24" => "jkwxq@sina.com" }
  # Or just: s.author    = "wuyukobe24"
  # s.authors            = { "wuyukobe24" => "jkwxq@sina.com" }
  # s.social_media_url   = "http://twitter.com/wangxueqi"

  # s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
   s.ios.deployment_target = "8.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/wuyukobe24/WXQLabelFlow.git", :tag => "#{s.version}" }

  s.source_files  = 'WXQLabelFlow/Classes/*.{h,m}'
  s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "WXQLabelFlow/Classes/*."


  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
