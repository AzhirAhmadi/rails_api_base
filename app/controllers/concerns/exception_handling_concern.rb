module ExceptionHandlingConcern
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActionController::ParameterMissing, with: :parameter_missing
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
  end

  private

  def record_not_found
    render json: Error.new(message: 'Record not found'), status: :not_found
  end

  def parameter_missing(exception)
    render json: Error.new(message: exception.message), status: :unprocessable_entity
  end

  def record_invalid(exception)
    render json: Error.new(message: exception.message), status: :unprocessable_entity
  end
end
