# frozen_string_literal: true

class ApplicationController < ActionController::API
  include SerializingConcern
  include ExceptionHandlingConcern
end
