tasks = {
}.freeze

desc "Lists all available tasks in webpacker:angular"
task :webpacker do
  puts "Available webpacker:angular tasks are:"
  tasks.each { |task, message| puts task.ljust(30) + message }
end
