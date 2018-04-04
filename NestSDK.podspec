Pod::Spec.new do |s|

  s.name             = 'NestSDK'
  s.version          = '0.1.5'
  s.summary          = 'SDK for the Nest API on iOS [Unofficial]'

  s.description      = <<-DESC
                       SDK for the Nest API on iOS [Unofficial]
                       
                       This open-source library allows you to integrate Nest API into your iOS app.

                       Learn more about Nest API at https://developer.nest.com/documentation/cloud/get-started
                       DESC

  s.homepage         = 'https://github.com/petroakzhygitov/NestSDK'
  s.license          = 'MIT'
  s.author           = { 'petroakzhygitov' => 'petro.akzhygitov@gmail.com' }

  s.platform     = :ios, '10.0'
  s.ios.deployment_target = '10.0'

  s.source           = { :git => 'https://github.com/petroakzhygitov/NestSDK.git', :tag => s.version.to_s }

  s.requires_arc = true

  s.source_files = 'NestSDK/NestSDK/**/*.{h,m}'
  s.public_header_files = 'NestSDK/NestSDK/*.{h}'
  
  s.dependency 'Firebase', '1.2.3'
  s.dependency 'JSONModel', '1.2.0'
  s.dependency 'SSKeychain', '1.3.1'
  
  s.weak_framework = 'Firebase'

  s.frameworks = 'Security', 'CFNetwork', 'SystemConfiguration'
  s.libraries = 'c++', 'icucore'

  s.pod_target_xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/Firebase', 'ENABLE_BITCODE' => 'NO', 'OTHER_LDFLAGS' => '-ObjC' }

end
