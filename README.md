# Wonder-Ruby-Style

> WonderRubyStyle é uma gem que facilita o compartilhamento de configurações do Rubocop entre os projetos de Ruby.

[![Gem Version](https://badge.fury.io/rb/wonder-ruby-style.svg)](https://badge.fury.io/rb/wonder-ruby-style)

## Instalação

Adicione essa linha ao Gemfile do seu app:

```ruby
group :test, :development do
  gem 'wonder-ruby-style'
end
```

Ou, se for uma biblioteca Ruby, adicione ao gemspec:

```ruby
spec.add_development_dependency 'wonder-ruby-style'
```

E então execute:

```bash
$ bundle install
```

## Uso

Crie um arquivo `.rubocop.yml` com as seguintes diretivas:

```yaml
inherit_gem:
  wonder-ruby-style:
    - presets/latest.yml
```

E então execute:

```bash
$ bundle exec rubocop
```

Não é necessário incluir a gem rubocop nas dependências da sua aplicação, apenas se você deseja forçar uma versão específica da gem.
