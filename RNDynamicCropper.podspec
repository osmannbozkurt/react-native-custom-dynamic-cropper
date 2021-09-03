package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package['version']

Pod::Spec.new do |s|
  s.name         = "RNDynamicCropper"
  s.version      = version
  s.summary      = package["description"]
  s.homepage     = "n/a"
  s.license      = "MIT"
  s.platform     = :ios, "7.0"
  s.authors      = { "osmannbozkurt" => "" }
  s.source       = { :git => "https://github.com/osmannbozkurt/react-native-custom-dynamic-cropper.git", :tag => 'v#{version}' }
  s.source_files  = "ios/src/*.{h,m}"
  s.requires_arc = true
  s.dependency "React"
  s.dependency "TOCropViewController"
end

  