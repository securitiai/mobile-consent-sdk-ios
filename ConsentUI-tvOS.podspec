Pod::Spec.new do |s|
    s.name         = 'ConsentUI-tvOS'
                            s.version      = '1.151.0-1rc'
    s.summary      = 'Securiti\'s mobile SDK provides a CMP with all ConsentCore features plus a pre-built UI for banners and preference centers. tvOS build.'
    s.description  = <<-DESC
    Collect and manage user privacy preferences with built-in UI for consent banners, ensuring compliance with privacy regulations. This pod ships the tvOS (Apple TV) slices of the framework.
                    DESC
    s.homepage     = 'https://github.com/securitiai/mobile-consent-sdk-ios'
    s.license      = { :type => 'MIT License', :file => 'LICENSE' }
    s.author       = { 'Securiti, Inc.' => 'apple-developers@securiti.ai' }
    s.source       = { :git => 'https://github.com/securitiai/mobile-consent-sdk-ios.git', :tag => s.version.to_s }
    s.platform     = :tvos, '17.0'
    s.vendored_frameworks = 'ConsentUI-tvOS.xcframework'
  end
