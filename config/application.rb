require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Trapwilly
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    CarrierWave.configure do |config|
      config.fog_credentials = {
        :provider               => 'AWS',
        :aws_access_key_id      => 'xxx',
        :aws_secret_access_key  => 'yyy',
        :host                   => 'object_store',
        :endpoint               => 'http://object_store:4569'
      }
      config.fog_directory  = ''                     # required
    end
  end
end
