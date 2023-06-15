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

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i(mri mingw x64_mingw)

  gem 'rspec-rails', '~> 6.0.0'

  gem 'rubocop', '~> 1.50.1'
  gem 'rubocop-performance', '~> 1.15'
  gem 'rubocop-rails', '~> 2.16', '>= 2.16.1'
  gem 'rubocop-rspec', '~> 2.13', '>= 2.13.2'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
