require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module Projects
  class Application < Rails::Application
    config.load_defaults 5.1
    # comments provided by Rails ...
    config.generators do |g|
      g.test_framework :rspec,
                       fixtures: false, view_specs: false, helper_specs: false, routing_specs: false
    end
  end
end
