require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
s.name         = "react-native-cookies"
s.version      = package["version"]
s.summary      = package['description']
s.homepage     = "http://git.terminus.io/reactnative/react-native-cookies"
s.license      = "package['license']"
s.author             = "joeferraro"
s.platform     = :ios, "8.0"
s.source       = { :git => "http://git.terminus.io/reactnative/react-native-cookies.git", :tag => "#{s.version}" }

s.source_files  = "ios/**/*.{h,m}"

s.dependency "React"
end



