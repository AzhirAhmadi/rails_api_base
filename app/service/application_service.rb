# frozen_string_literal: true

class ApplicationService
  extend Dry::Initializer
  include Dry::Monads[:result, :do]

  private_class_method :new

  def self.call(**options)
    new(**options).call
  end

  def call
    Failure(:not_implemented)
  end
end
