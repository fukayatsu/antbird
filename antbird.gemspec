
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "antbird/version"

Gem::Specification.new do |spec|
  spec.name          = "antbird"
  spec.version       = Antbird::VERSION
  spec.authors       = ["fukayatsu"]
  spec.email         = ["fukayatsu@gmail.com"]

  spec.summary       = %q{Nearly auto-generated Elasticsearch client}
  spec.description   = %q{Antbird is a yet another low level API client for the Elasticsearch HTTP interface.}
  spec.homepage      = "https://github.com/fukayatsu/antbird"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features|script|tmp)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "> 0.8", "< 2.0"
  spec.add_dependency 'faraday_middleware', "> 0.12", "< 1.0"

  spec.add_development_dependency "bundler", "> 1.16", "< 3.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "octokit", "~> 4.0"
  spec.add_development_dependency "pry-byebug", "~> 3.0"
end
