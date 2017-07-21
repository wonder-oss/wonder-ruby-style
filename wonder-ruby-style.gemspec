# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wonder/ruby/style/version'

Gem::Specification.new do |spec|
  spec.name          = 'wonder-ruby-style'
  spec.version       = Wonder::Ruby::Style::VERSION
  spec.authors       = ['Wonder Sistemas']
  spec.email         = ['wonder@wonder.com.br']

  spec.summary       = 'Compartilhamento de configurações do Rubocop entre os projetos de Ruby.'
  spec.homepage      = 'http://www.wonder.com.br'

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

  spec.add_dependency 'rubocop', '~> 0.49'
  spec.add_dependency 'rubocop-rspec', '~> 1.15'
  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
end
