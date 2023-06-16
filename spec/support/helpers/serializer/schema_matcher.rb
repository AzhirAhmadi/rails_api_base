# frozen_string_literal: true

module Helpers
  module Serializer
    class SchemaMatcher
      def initialize(name)
        @name = name
        @errors = []
      end

      def matches?(subject)
        @errors = JSON::Validator.fully_validate(schema, subject)
        @errors.empty?
      end

      def description
        "match schema '#/components/schemas/#{@name}'"
      end

      def failure_message
        "expected JSON to match '#/components/schemas/#{@name}' (errors: #{@errors.join(', ')})"
      end

      private

      def configuration
        Rswag::Specs.config.get_swagger_doc('swagger.json')
      end

      def schema
        {
          '$ref': "#/components/schemas/#{@name}",
          '$schema': 'http://tempuri.org/rswag/specs/extended_schema',
          components: configuration[:components]
        }
      end
    end
  end
end
