# frozen_string_literal: true

module Swagger
  class << self
    def schemas
      @_schemas ||= {}
    end

    def schema(name, definition)
      schemas[name] = definition
    end

    def define(&block)
      instance_eval(&block)
    end
  end
end
