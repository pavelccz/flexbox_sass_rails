# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flexbox_sass_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "flexbox_sass_rails"
  spec.version       = FlexboxSassRails::VERSION
  spec.authors       = ["Pavel Cerny"]
  spec.email         = ["pavelc@gmail.com"]

  spec.summary       = %q{Flexbox style classes}
  spec.description   = %q{Flexbox style classes}
  spec.homepage      = "https://github.com/pavelc/flexbox_sass_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(app|test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
