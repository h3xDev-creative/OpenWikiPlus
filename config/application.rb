require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OpenWikiPlus
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Configuration for the application, engines, and railties goes here.
    # config.eager_load = true

    # Time zone configuration
    config.time_zone = 'UTC'
  end
end
