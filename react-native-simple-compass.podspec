package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name             = package['name']
  s.version          = package['version']
  s.summary          = package['description']
  s.requires_arc = true
  s.license      = package['license']
  s.homepage     = 'n/a'
  s.author       = package['author']
  s.source       = { :git => "https://github.com/mantro/react-native-simple-compass.git"}
  s.source_files = 'ios/*.{h,m}'
  s.platform     = :ios, "9.0"

  s.dependency 'React'
end
