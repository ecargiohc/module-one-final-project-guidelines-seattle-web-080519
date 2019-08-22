require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT) #shows SQL query in terminal to show me, as the coder, what SQL query was put in; or error/lack thereof
  Pry.start
end
