# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mandate/version"

Gem::Specification.new do |spec|
  spec.name          = "mandate"
  spec.version       = Mandate::VERSION
  spec.authors       = ["Jeremy Walker"]
  spec.email         = ["jez.walker@gmail.com"]

  spec.summary       = %q{A simple command-pattern helper gem for Ruby}
  spec.description   = %q{This Ruby Gem adds functionality for the command pattern in Ruby, and for memoization.}
  spec.homepage      = "https://github.com/thalamusai/mandate"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
