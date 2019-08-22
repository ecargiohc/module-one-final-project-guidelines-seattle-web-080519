require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'bin'

require_relative '../bin/party_item_list'
require_relative '../bin/party_plan'
require_relative '../bin/user'
require_relative '../db/seeds'
