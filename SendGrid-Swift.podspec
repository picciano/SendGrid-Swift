Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.name = "SendGrid-Swift"
  s.summary = "SendGrid-Swift allows sending email using SendGrid v3."
  s.requires_arc = true
  s.version = "0.1.1"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "Anthony Picciano" => "anthony.picciano@gmail.com" }
  s.homepage = "https://github.com/picciano/SendGrid-Swift"
  s.source = { :git => "https://github.com/picciano/SendGrid-Swift.git", :tag => "#{s.version}"}
  s.framework = "Foundation"
  s.source_files = "SendGrid-Swift/**/*.{swift}"
  # s.resources = "SendGrid-Swift/**/*.{png,jpeg,jpg,storyboard,xib}"
end
