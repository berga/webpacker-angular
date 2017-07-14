require "webpacker/configuration"

puts "Copying html loader to config/webpack/loaders"
copy_file "#{__dir__}/config/loaders/core/html.js", "config/webpack/loaders/html.js"

puts "Copying sass loader to config/webpack/loaders"
copy_file "#{__dir__}/config/loaders/core/sass.js", "config/webpack/loaders/sass.js"

puts "Copying angular loader to config/webpack/loaders"
copy_file "#{__dir__}/config/loaders/installers/angular.js", "config/webpack/loaders/angular.js"

# puts "Copying angular example entry file to #{Webpacker::Configuration.entry_path}"
# copy_file "#{__dir__}/examples/angular/hello_angular.js", "#{Webpacker::Configuration.entry_path}/hello_angular.js"
#
# puts "Copying hello_angular app to #{Webpacker::Configuration.source_path}"
# directory "#{__dir__}/examples/angular/hello_angular", "#{Webpacker::Configuration.source_path}/hello_angular"

puts "Installing all angular dependencies"
run "yarn add @angular/cli angular2-template-loader css-loader raw-loader to-string-loader"

puts "Webpacker now supports angular CLI 🎉"
