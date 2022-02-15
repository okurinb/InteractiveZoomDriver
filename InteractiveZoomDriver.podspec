Pod::Spec.new do |s|

  s.name         = "InteractiveZoomDriver"
  s.version      = "1.2.3"
  s.summary      = "UIView to zoomable by pinch gesture."
  s.swift_versions = ['4.0', '4.2', '5.0']

  s.description  = <<-DESC
        This repo is view to zoomable by pinch gesture.
    DESC

  s.ios.deployment_target = '9.0'
  s.homepage     = "https://github.com/shima11/InteractiveZoomDriver"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Shima" => "shima.jin@icloud.com" }

  s.source       = { :git => "https://github.com/shima11/InteractiveZoomDriver.git", :tag => s.version.to_s }
  s.source_files = "Sources/InteractiveZoomDriver/*.swift"
  s.license      = { :type => "MIT", :file => "LICENSE" }

end
