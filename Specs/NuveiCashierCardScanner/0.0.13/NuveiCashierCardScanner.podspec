Pod::Spec.new do |s|
  s.name             = "NuveiCashierCardScanner"
  s.version          = '0.0.13'
  s.summary          = "NuveiCashierCardScanner"
  s.description      = <<-DESC
                        NuveiCashierCardScanner.
                       DESC
  s.homepage         = "https://github.com/sborkin/test_ios"
  s.license          = 'CMPS'
  s.author           = "Mobaxe"
  s.source           = { :git => "git@github.com:sborkin/test_specs.git", :tag => s.version.to_s }
  s.platform         = :ios, '10.0'
  s.requires_arc = true
  s.ios.deployment_target = "10.0"
  s.swift_version       = '5.1'
  s.libraries = 'z'

  s.vendored_frameworks = "NuveiCashierCardScanner.framework"

  s.frameworks = 'UIKit','WebKit'

  s.dependency 'CardIO'

  s.xcconfig =  {
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'SWIFT_VERSION' => '5.1',
      'OTHER_LDFLAGS' => '$(inherited) -objc -ObjC -lc++ -framework "NuveiCashierCardScanner"',
      'GCC_SYMBOLS_PRIVATE_EXTERN' => 'YES',
  }
end
