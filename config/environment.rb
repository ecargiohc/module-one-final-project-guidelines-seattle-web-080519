require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'bin'

##
require_relative '../bin/party_item_list.rb'
require_relative '../bin/party_plan.rb'
require_relative '../bin/user.rb'
require_relative '../db/seeds.rb'
