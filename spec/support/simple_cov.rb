# frozen_string_literal: true

require 'simplecov'
require 'simplecov-cobertura'
require 'webmock/rspec'

SimpleCov.configure do
  refuse_coverage_drop
end

SimpleCov.start do
  formatter SimpleCov::Formatter::HTMLFormatter
  formatter SimpleCov::Formatter::CoberturaFormatter if ENV['CI']

  add_filter '/config/'
  add_filter '/lib/'
  add_filter '/spec/'
  add_filter '/vendor/'

  add_group 'Contracts', 'app/contracts'
  add_group 'Controllers', 'app/controllers'
  add_group 'Models', 'app/models'
  add_group 'Serializers', 'app/serializers'
  add_group 'Services', 'app/services'
end
