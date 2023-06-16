# frozen_string_literal: true

class Error < Dry::Struct
  transform_keys(&:to_sym)

  attribute :message, Types::String.default('No message provided')
end
