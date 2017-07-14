namespace :webpacker do
  namespace :angular do
    desc "Install everything needed for Angular CLI project"
    task :install => ["webpacker:verify_install"] do
      template = File.expand_path("../install/angular.rb", __dir__)
      if Rails::VERSION::MAJOR >= 5
        exec "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{template}"
      else
        exec "#{RbConfig.ruby} ./bin/rake rails:template LOCATION=#{template}"
      end
    end
  end
end
