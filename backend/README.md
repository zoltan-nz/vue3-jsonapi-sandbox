## Initial settings

Add the following gems to `developer` section:

```
  gem "rbs"
  gem "rbs_rails"
  gem "ruby-lsp"
  gem "solargraph"
  gem "solargraph-rails"
  gem "spring"
  gem "spring-watcher-listen"
  gem "steep"
```

### RBS and Steep

Initialize RBS:

```
bin/rails g rbs_rails:install
bundle exec rbs collection init
bundle exec rbs collection install
bundle exec rbs collection update
```

Initialize Steep:

```
steep init
```

### Solargraph

Initialize solargraph:

- Add solargraph extension to VSCode. https://marketplace.visualstudio.com/items?itemName=castwide.solargraph

```
yard gems
```

Add configuration:

```
solargraph config
```

Add to the config file:

```
plugins:
  - solargraph-rails
```

### Rubocop

