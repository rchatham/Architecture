Pod::Spec.new do |s|
  s.name         = "Architecture"
  s.version      = "0.0.1"
  s.summary      = "A short description of Architecture."
  s.description  = <<-DESC
    Basic implementations of some structural patterns for building ios apps.
                   DESC
  s.homepage     = "https://github.com/rchatham/Architecture"
  s.license      = "MIT"
  s.author       = { "Reid Chatham" => "reid.chatham@gmail.com" }
  s.source       = { :git => "https://github.com/rchatham/Architecture.git", :tag => "#{s.version}" }
  s.source_files = "Architecture/**/*.swift"
end
