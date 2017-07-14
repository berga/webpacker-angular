tasks = {
    'webpacker:angular:install' => 'Installs and setup angular CLI project with yarn'
}.freeze

namespace :webpacker do
  desc "Lists all available tasks in webpacker:angular"
  task :angular do
    puts "Available webpacker:angular tasks are:"
    tasks.each {|task, message| puts task.ljust(30) + message}
  end
end
