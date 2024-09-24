Pod::Spec.new do |s|
    s.name         = 'ConsentCore'
    s.version      = '1.122.0'
    s.summary      = 'Securiti\'s SDK offers a lightweight CMP without a UI, ideal for custom interfaces or apps with size limitations.'
    s.description  = <<-DESC
Lightweight CMP SDK without UI, enabling custom implementations and privacy compliance for apps with size constraints.
                    DESC
    s.homepage     = 'https://github.com/securitiai/mobile-consent-sdk-ios'
    s.license      = { :type => 'MIT License', :file => 'LICENSE' }
    s.author       = { 'Securiti, Inc.' => 'apple-developers@securiti.ai' }
    s.source       = { :git => 'https://github.com/securitiai/mobile-consent-sdk-ios.git', :tag => s.version.to_s }
    s.platform     = :ios, '15.0'
    s.vendored_frameworks = 'ConsentCore.xcframework'
  end