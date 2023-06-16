# frozen_string_literal: true

module Helpers
  module Request
    class SchemaDefinition
      def initialize(properties)
        @properties = properties
      end

      def to_h
        {
          type: :object,
          properties: compiled_properties
        }
      end

      private

      def compiled_properties
        @properties.transform_values do |definition|
          expand_shorthand_definition(definition)
        end
      end

      def expand_shorthand_definition(definition)
        case definition
        when String then { '$ref': definition }
        when NilClass then { nullable: true }
        when Array then { type: :array, items: expand_array_definitions(definition) }
        else definition
        end
      end

      def expand_array_definitions(definitions)
        definitions.collect! { |definition| expand_shorthand_definition(definition) }
        definitions.size == 1 ? definitions.first : { oneOf: definitions }
      end
    end
  end
end
