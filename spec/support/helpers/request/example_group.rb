# frozen_string_literal: true

module Helpers
  module Request
    module ExampleGroup
      def schema(**properties)
        schema_definition = SchemaDefinition.new(properties)
        metadata[:response][:schema] = schema_definition.to_h
      end

      def perform_request!(&block)
        run_test!(&block)
      end
    end
  end
end
