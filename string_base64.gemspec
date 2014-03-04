# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string_base64/version'

Gem::Specification.new do |spec|
  spec.name          = "string_base64"
  spec.version       = StringBase64::VERSION
  spec.authors       = ["Andrew Hammond"]
  spec.email         = ["andrew@evertrue.com"]
  spec.summary       = %q{Add Base64 methods to Ruby's String class}
  spec.description   = %q{Add Base64 methods to Ruby's String class}
  spec.homepage      = "http://github.com/andrhamm"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
