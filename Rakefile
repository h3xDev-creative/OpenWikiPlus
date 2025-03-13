# Rakefile for OpenWikiPlus

# Load the Rails environment and Rails tasks
require_relative 'config/application'

# Initialize the Rails application
Rails.application.load_tasks

# Optional custom tasks can be added below

# Example of a custom task
namespace :custom do
  desc "Print a hello message"
  task :hello do
    puts "Hello from OpenWikiPlus! 👋"
  end
end

# Example task to run migrations
namespace :db do
  desc "Run migrations"
  task :migrate do
    Rake::Task['db:migrate'].invoke
    puts "Database migrations completed! 💾"
  end
end
