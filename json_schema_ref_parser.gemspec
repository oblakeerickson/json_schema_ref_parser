# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json_schema_ref_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "json_schema_ref_parser"
  spec.version       = JsonSchemaRefParser::VERSION
  spec.authors       = ["Blake Erickson"]
  spec.email         = ["o.blakeerickson@gmail.com"]

  spec.summary       = %q{Dereference json schema yaml files with references}
  spec.description   = %q{Resolves references ($ref) to local yaml files and returns a single hash object}
  spec.homepage      = "https://github.com/oblakeerickson/json_schema_ref_parser"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
