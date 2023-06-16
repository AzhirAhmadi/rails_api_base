# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.5'

# Use postgres as the database for Active Record
gem 'pg', '~> 1.4', '>= 1.4.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i(mingw mswin x64_mingw jruby)

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

gem 'dotenv-rails', '~> 2.7', '>= 2.7.6', require: 'dotenv/rails-now'

gem 'rswag-api'
gem 'rswag-ui'

# Dry-rb gems
gem 'dry-initializer', '~> 3.1.0', '>= 3.1.1'
gem 'dry-matcher', '~> 1.0', '>= 1.0.0'
gem 'dry-monads', '~> 1.5'
gem 'dry-struct', '~> 1.5', '>= 1.5.2'
gem 'dry-types', '~> 1.5', '>= 1.5.1'
gem 'dry-validation', '~> 1.10.0'

# serializers / deserializers
gem 'blueprinter', '~> 0.25', '>= 0.25.3'
gem 'oj', '~> 3.13', '>= 3.13.21'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i(mri mingw x64_mingw)
  gem 'pry', '~> 0.14', '>= 0.14.1'

  gem 'factory_bot_rails', '~> 6.2', '>= 6.2.0', require: false
  gem 'faker'
  gem 'rspec-rails', '~> 6.0.0'
  gem 'rswag-specs'
  gem 'shoulda-matchers', '~> 5.2', require: false

  gem 'rubocop', '~> 1.50.1'
  gem 'rubocop-performance', '~> 1.15'
  gem 'rubocop-rails', '~> 2.16', '>= 2.16.1'
  gem 'rubocop-rspec', '~> 2.13', '>= 2.13.2'

  gem 'simplecov', '~> 0.21', '>= 0.21.2', require: false
  gem 'simplecov-cobertura', '~> 2.1', '>= 2.1.0', require: false
  gem 'webmock', '~> 3.14', '>= 3.14.2'

  gem 'annotate', '~> 3.1', require: false
end
