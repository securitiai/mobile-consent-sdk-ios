Pod::Spec.new do |s|
    s.name         = 'ConsentCore'
    s.version      = '1.127.0'
    s.summary      = 'Securiti\'s mobile SDK provides a lightweight CMP without a UI, ideal for custom interfaces or size constraints.'
    s.description  = <<-DESC
Manage user privacy preferences with core functionalities, suited for custom UIs or limited app sizes, maintaining compliance.
                    DESC
    s.homepage     = 'https://github.com/securitiai/mobile-consent-sdk-ios'
    s.license      = { :type => 'MIT License', :file => 'LICENSE' }
    s.author       = { 'Securiti, Inc.' => 'apple-developers@securiti.ai' }
    s.source       = { :git => 'https://github.com/securitiai/mobile-consent-sdk-ios.git', :tag => s.version.to_s }
    s.platform     = :ios, '15.0'
    s.vendored_frameworks = 'ConsentCore.xcframework'
  end
