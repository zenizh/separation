$:.unshift File.expand_path('../lib', __FILE__)

require 'variauto/version'

Gem::Specification.new do |s|
  s.name        = 'variauto'
  s.version     = Variauto::VERSION
  s.authors     = 'kami'
  s.email       = 'kami30k@gmail.com'
  s.homepage    = 'https://github.com/kami30k/variauto'
  s.summary     = 'Set request.variant to user device type automatically for Rails.'
  s.description = 'Set request.variant to user device type automatically for Rails.'
  s.license     = 'MIT'

  s.files = `git ls-files -z`.split("\x0")

  s.add_dependency 'rails', '>= 4.1.0'

  s.add_development_dependency 'rspec-rails'
end
