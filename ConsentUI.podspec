Pod::Spec.new do |s|
    s.name         = 'ConsentUI'
    s.version      = '1.126.0'
    s.summary      = 'Securiti\'s mobile SDK provides a CMP with all ConsentCore features plus a pre-built UI for banners and preference centers.'
    s.description  = <<-DESC
    Collect and manage user privacy preferences with built-in UI for consent banners, ensuring compliance with privacy regulations.
                    DESC
    s.homepage     = 'https://github.com/securitiai/mobile-consent-sdk-ios'
    s.license      = { :type => 'MIT License', :file => 'LICENSE' }
    s.author       = { 'Securiti, Inc.' => 'apple-developers@securiti.ai' }
    s.source       = { :git => 'https://github.com/securitiai/mobile-consent-sdk-ios.git', :tag => s.version.to_s }
    s.platform     = :ios, '15.0'
    s.vendored_frameworks = 'ConsentUI.xcframework'
  end
