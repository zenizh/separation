$:.unshift File.expand_path('../lib', __FILE__)

require 'separation/version'

Gem::Specification.new do |s|
  s.name        = 'separation'
  s.version     = Separation::VERSION
  s.authors     = 'kami'
  s.email       = 'hiroki.zenigami@gmail.com'
  s.homepage    = 'https://github.com/kami-zh/separation'
  s.summary     = 'Render separate views depending on the user device type for Rails.'
  s.description = 'Render separate views depending on the user device type for Rails.'
  s.license     = 'MIT'

  s.files = `git ls-files -z`.split("\x0")

  s.add_dependency 'rails', '>= 4.1.0'

  s.add_development_dependency 'rspec-rails'
end
