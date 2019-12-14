
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "antbird/version"

Gem::Specification.new do |spec|
  spec.name          = "antbird"
  spec.version       = Antbird::VERSION
  spec.authors       = ["fukayatsu"]
  spec.email         = ["fukayatsu@gmail.com"]

  spec.summary       = %q{Nearly auto-generated Elasticsearch client}
  spec.description   = %q{Nearly auto-generated Elasticsearch client}
  spec.homepage      = "https://github.com/fukayatsu/antbird"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features|script|tmp)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency 'faraday_middleware'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard-rspec", "~> 4.0"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "octokit", "~> 4.0"
  spec.add_development_dependency "pry-byebug", "~> 3.0"
end
