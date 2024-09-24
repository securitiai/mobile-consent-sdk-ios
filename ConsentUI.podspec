Pod::Spec.new do |s|
    s.name         = 'ConsentUI'
    s.version      = '1.122.0'
    s.summary      = 'Securiti\'s SDK integrates a native CMP with a pre-built UI for consent banners and a preference center, managed via the admin portal.'
    s.description  = <<-DESC
    Native CMP SDK with UI for consent banners and preference center, managed via the admin portal. ensuring compliance with global privacy regulations.
                    DESC
    s.homepage     = 'https://github.com/securitiai/mobile-consent-sdk-ios'
    s.license      = { :type => 'MIT License', :file => 'LICENSE' }
    s.author       = { 'Securiti, Inc.' => 'apple-developers@securiti.ai' }
    s.source       = { :git => 'https://github.com/securitiai/mobile-consent-sdk-ios.git', :tag => s.version.to_s }
    s.platform     = :ios, '15.0'
    s.vendored_frameworks = 'ConsentUI.xcframework'
  end