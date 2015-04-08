# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'api_scraper/version'

Gem::Specification.new do |spec|
  spec.name          = "api_scraper"
  spec.version       = ApiScraper::VERSION
  spec.authors       = ["James Traver"]
  spec.email         = ["jamest@generalassemb.ly"]

  spec.summary       = "A gem designed to grab data from an API and save it."
  spec.description   = "Usage: api_scraper path/to/api file_to_save.json"
  spec.homepage      = "https://github.com/code-for-coffee"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
