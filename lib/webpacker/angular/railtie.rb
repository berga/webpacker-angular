require "rails/railtie"

require_relative "./helper"

class Webpacker::Angular::Engine < ::Rails::Engine
  initializer :webpacker_angular do |app|
  end
end
