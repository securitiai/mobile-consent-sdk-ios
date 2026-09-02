Pod::Spec.new do |s|
    s.name         = 'ConsentCore-tvOS'
                        s.version      = '1.150.0'
    s.summary      = 'Securiti\'s mobile SDK provides a lightweight CMP without a UI, ideal for custom interfaces or size constraints. tvOS build.'
    s.description  = <<-DESC
Manage user privacy preferences with core functionalities, suited for custom UIs or limited app sizes, maintaining compliance. This pod ships the tvOS (Apple TV) slices of the framework.
                    DESC
    s.homepage     = 'https://github.com/securitiai/mobile-consent-sdk-ios'
    s.license      = { :type => 'MIT License', :file => 'LICENSE' }
    s.author       = { 'Securiti, Inc.' => 'apple-developers@securiti.ai' }
    s.source       = { :git => 'https://github.com/securitiai/mobile-consent-sdk-ios.git', :tag => s.version.to_s }
    s.platform     = :tvos, '17.0'
    s.vendored_frameworks = 'ConsentCore-tvOS.xcframework'
  end
