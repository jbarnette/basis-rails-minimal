require File.expand_path("../boot", __FILE__)

%w(action_controller action_mailer rails/test_unit).each do |framework|
  require "#{framework}/railtie"
end

module BasisRailsMinimal
  class Application < Rails::Application
    config.encoding           = "utf-8"
    config.filter_parameters += [:password]
  end
end
