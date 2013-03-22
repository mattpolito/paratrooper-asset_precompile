# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paratrooper-asset_precompile/version'

Gem::Specification.new do |gem|
  gem.name          = "paratrooper-asset_precompile"
  gem.version       = Paratrooper::AssetPrecompile::VERSION
  gem.authors       = ["Brandon Farmer", "Matt Polito"]
  gem.email         = ["bthesorceror@gmail.com", "matt.polito@gmail.com"]
  gem.description   = %q{Adds manual asset precompilation to Paratrooper deploy process}
  gem.summary       = %q{Adds manual asset precompilation to Paratrooper deploy process}
  gem.homepage      = "http://github.com/mattpolito/paratrooper-newrelic"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 2.12'
  gem.add_development_dependency 'pry'
  gem.add_dependency 'paratrooper', '~> 1.2'
end
