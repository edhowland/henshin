# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'henshin/version'

Gem::Specification.new do |spec|
  spec.name          = "henshin"
  spec.version       = Henshin::VERSION
  spec.authors       = ["edhowland"]
  spec.email         = ["ed.howland@gmail.com"]

  spec.summary       = %q{Henshin A templating Engine for Markdown}
  spec.description   = %q{Henshin is an executable and library to transform files written in a Markdown DSL to Markdown, HTML or PDF}
  spec.homepage      = "https://github.com/edhowland/henshin"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
spec.bindir = 'bin'
  spec.executables << 'henshin'
#  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
