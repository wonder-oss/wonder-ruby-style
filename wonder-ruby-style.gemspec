# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wonder/ruby/style/version'

Gem::Specification.new do |spec|
  spec.name          = 'wonder-ruby-style'
  spec.version       = Wonder::Ruby::Style::VERSION
  spec.authors       = ['Wonder Sistemas']
  spec.email         = ['wonder@wonder.com.br']

  spec.summary       = 'Compartilhamento de configurações do Rubocop entre os projetos de Ruby.'
  spec.homepage      = 'https://github.com/wondersistemas/wonder-ruby-style'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', Wonder::Ruby::Style::VERSION
  spec.add_dependency 'rubocop-rspec'
  spec.add_dependency 'rubocop-rails'
  spec.add_dependency 'rubocop-performance'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
