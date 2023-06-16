# frozen_string_literal: true

module RenderingConcern
  extend ActiveSupport::Concern

  included do
    def render(*args)
      return super(*args) unless args.last.is_a?(Hash)
      return super(*args) if args.last[:status].present?

      args.last[:status] = status_mapper if args.last.is_a?(Hash)
      super(*args)
    end
  end

  private

  def status_mapper
    {
      index: :ok,
      show: :ok,
      create: :created,
      update: :ok,
      destroy: :ok
    }[params[:action].to_sym]
  end
end
