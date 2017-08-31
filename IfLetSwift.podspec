Pod::Spec.new do |s|
  s.name = 'IfLetSwift'
  s.version = '0.5.0'
  s.license = 'MIT'
  s.summary = 'Swift optional extension for convinient "optional chaining" calls'
  s.homepage = 'https://github.com/negusoft/IfLetSwift'
  s.social_media_url = 'http://twitter.com/negusoft'
  s.authors = { 'Borja Lopez Urkidi' => 'blurkidi@negusoft.com' }
  s.source = { :git => 'https://github.com/negusoft/IfLetSwift.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'IfLetSwift/IfLetSwift.playground/Sources/Optional+IfLetSwift.swift'

  s.requires_arc = true
end
