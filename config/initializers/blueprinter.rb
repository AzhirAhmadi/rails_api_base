# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

Blueprinter.configure do |config|
  config.generator = Oj
  config.sort_fields_by = :definition
end
