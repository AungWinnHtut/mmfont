# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mmfont/version'

Gem::Specification.new do |spec|
  spec.name          = 'mmfont'
  spec.version       = Mmfont::VERSION
  spec.authors       = ['Ye Lin Aung']
  spec.email         = ['me@yelinaung.com']
  spec.summary       = 'Myanmar font converter.'
  spec.description   = 'Myanmar font toolkit in Ruby.'
  spec.homepage      = 'https://github.com/yelinaung/mmfont'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'coveralls'
  spec.add_dependency 'rubocop'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
end
