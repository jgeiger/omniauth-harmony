# encoding: UTF-8

require File.expand_path(File.join("..", "lib", "omniauth", "harmony", "version"), __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency "omniauth", "~> 1.0"

  gem.authors       = ["Joey Geiger"]
  gem.email         = ["jgeiger@gmail.com"]
  gem.description   = "The Logitech Harmony strategy for OmniAuth"
  gem.summary       = "The Logitech Harmony strategy for OmniAuth 1.x"

  gem.files         = `git ls-files`.split("\n")
  gem.name          = "omniauth-harmony"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Harmony::VERSION

  gem.add_runtime_dependency "omniauth-oauth2", "~> 1.1"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rubocop"
end
