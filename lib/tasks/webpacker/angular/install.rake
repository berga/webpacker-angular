WEBPACKER_ANGULAR_APP_TEMPLATE_PATH = File.expand_path("../../../install/template.rb", __dir__)

namespace :webpacker do
  namespace :angular do
    desc "Installs a new angular project"
    task :install do
      if Rails::VERSION::MAJOR >= 5
        exec "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{WEBPACKER_ANGULAR_APP_TEMPLATE_PATH}"
      else
        exec "#{RbConfig.ruby} ./bin/rake rails:template LOCATION=#{WEBPACKER_ANGULAR_APP_TEMPLATE_PATH}"
      end
    end
  end
end
