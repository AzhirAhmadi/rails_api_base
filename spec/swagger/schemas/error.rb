# frozen_string_literal: true

Swagger.define do
  schema 'Error', {
    type: :object,
    required: %i(
      message
    ),
    properties: {
      message: {
        type: :string
      }
    }
  }
end
