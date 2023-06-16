# frozen_string_literal: true

module RenderingConcern
  extend ActiveSupport::Concern

  def self.json_renderer_method_name
    ActionController::Renderers._render_with_renderer_method_name(:json)
  end

  # Overwrite the default JSON renderer to use our custom service.
  # Available renderers are defined in `ActionController::Renderers::All`.
  define_method json_renderer_method_name do |object, options|
    self.content_type = Mime[:json] if media_type.nil?

    options[:root] = :data
    render_as_json(object, options)
  end

  private

  def object_class(object)
    case object
    when ActiveRecord::Relation then object.model
    when Array then object.first.class
    else object.class
    end
  end

  def render_as_json(object, options)
    serializer_class(object, options).render(object, options)
  end

  def serializer_class(object, options)
    return options[:with] unless options[:with].nil?

    constant = "#{object_class(object)}Serializer".safe_constantize
    constant || FallbackSerializer
  end
end
