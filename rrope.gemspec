# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rrope/version'

Gem::Specification.new do |spec|
  spec.name          = 'rrope'
  spec.version       = Rope::VERSION
  spec.authors       = ['Rick Song']
  spec.email         = ['rickcsong@gmail.com']
  spec.summary       = %q{Ruby Implementation of the Rope data structure}
  spec.description   = 'Rope by Rick'
  spec.homepage      = 'https://github.com/RickCSong/rrope'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 10.1'
  spec.add_development_dependency 'rspec', '~> 2.14'
end
