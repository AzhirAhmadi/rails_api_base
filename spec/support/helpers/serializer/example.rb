# frozen_string_literal: true

module Helpers
  module Serializer
    module Example
      def match_schema(name)
        SchemaMatcher.new(name)
      end
    end
  end
end
