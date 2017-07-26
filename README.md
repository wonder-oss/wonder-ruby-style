# Wonder-Ruby-Style

WonderRubyStyle é uma gem que facilita o compartilhamento de configurações do Rubocop entre os projetos de Ruby.

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
    - default.yml
```

E então execute:

```bash
$ bundle exec rubocop
```

# CodeClimate

Para manter compatibilidade com o serviço do CodeClimate é necessário adicionar uma regra ao arquivo `.codeclimate.yml`.

```yaml
prepare:
  fetch:
  - url: "https://raw.githubusercontent.com/wondersistemas/wonder-ruby-style/master/.rubocop.yml"
    path: ".rubocop.yml"

# necessário também alterar a versão do rubocop para 0.49.1
engines:
  rubocop:
    enabled: true
    channel: rubocop-0-49-1
```

O serviço então irá baixar e reescrever o arquivo `.rubocop.yml` com o conteúdo da url.

Não é necessário incluir a gem rubocop nas dependências da sua aplicação.
