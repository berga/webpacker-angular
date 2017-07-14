require "webpacker/angular/version"

module Webpacker
  module Angular
    extend self
  end
end


require_relative "angular/railtie" if defined?(Rails)
