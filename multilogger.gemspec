# encoding: utf-8

Gem::Specification.new do |spec|
  spec.name    = 'multilogger'
  spec.version = '0.0.1'

  spec.author      = 'Mike Gunderloy'
  spec.email       = 'MikeG1@larkfarm.com'
  spec.description = 'Multilogger tees your logs'
  spec.summary     = 'Multilogger allows setting up multiple logging backends'
  spec.homepage    = 'https://github.com/ffmike/multilogger'
  spec.license     = 'MIT'

  spec.files      = `git ls-files`.split($RS)
  spec.test_files = spec.files.grep(/^spec/)

  spec.add_development_dependency 'bundler', '>= 1.6.9'
end
