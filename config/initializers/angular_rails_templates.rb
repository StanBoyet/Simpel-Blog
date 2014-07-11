Rails.application.config.tap do |config|
  config.angular_templates.module_name = 'templates'
  config.angular_templates.ignore_prefix = 'simpel-blog-ng/'
  config.angular_templates.markups = %w(erb str slim)
  config.angular_templates.htmlcompressor = false
end

Rails.application.assets.context_class.class_eval do
  include ApplicationHelper
  include ActionView::Helpers
  include Rails.application.routes.url_helpers
end