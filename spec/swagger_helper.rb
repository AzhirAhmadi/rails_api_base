# frozen_string_literal: true

require 'rails_helper'
require 'rswag/specs'

# Load available Swagger schemas.
Dir[File.expand_path('../spec/swagger/schemas/**/*.rb', __dir__)].each { |schema| load schema }

RSpec.configure do |config|
  # Specify the root folder where Swagger JSON files will be generated.
  config.swagger_root = Rswag::SWAGGER_ROOT

  # Specify `json` as the format of the output file.
  config.swagger_format = :json

  # Define one or more Swagger documents and provide metadata for each one.
  config.swagger_docs = {
    'swagger.json' => {
      openapi: '3.0.3',
      servers: [
        {
          url: 'http://localhost:3000/',
          description: 'Development'
        }
      ],
      components: {
        schemas: Swagger.schemas
      }
    }
  }

  # Generate an example from the response body.
  config.after(:each, type: :request) do |example|
    next if response.nil? || response.media_type != 'application/json' || response.body.empty?

    example.metadata[:response][:content] = {
      'application/json' => { example: Oj.load(response.body) }
    }
  end

  # Extend with custom example group helpers.
  config.extend Helpers::Request::ExampleGroup, type: :request
end
