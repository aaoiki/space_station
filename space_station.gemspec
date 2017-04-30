# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'space_station/version'

Gem::Specification.new do |spec|
  spec.name          = "space_station"
  spec.version       = SpaceStation::VERSION
  spec.authors       = ["aaoiki"]
  spec.email         = ["aaoiki7@gmail.com"]

  spec.summary       = %q{Transform your rack app into a space station!}
  spec.description   = %q{A toy gem dedicated to clients and project managers who make silly and unrealistic requirements}
  spec.homepage      = "https://github.com/aaoiki/space_station"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
