Pod::Spec.new do |spec|
  spec.name = "URLSessionInstrumentation"
  spec.version = "1.12.1"
  spec.summary = "Swift OpenTelemetry Standard output Exporter"

  spec.homepage = "https://github.com/open-telemetry/opentelemetry-swift"
  spec.documentation_url = "https://opentelemetry.io/docs/languages/swift"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE" }
  spec.authors = "OpenTelemetry Authors"

  spec.source = { :git => "https://github.com/open-telemetry/opentelemetry-swift.git", :tag => spec.version.to_s }
  spec.source_files = "Sources/Instrumentation/URLSession/*.swift"

  spec.swift_version = "5.10"
  spec.ios.deployment_target = "13.0"
  spec.tvos.deployment_target = "13.0"
  spec.watchos.deployment_target = "6.0"
  spec.module_name = "URLSession"

  spec.pod_target_xcconfig = { "OTHER_SWIFT_FLAGS" => "-module-name URLSession -package-name opentelemetry_swift_network_status" }

end
