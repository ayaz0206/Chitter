require 'sinatra'
require 'data_mapper'
require 'rack-flash'
require 'sinatra/partial'


env = ENV["RACK_ENV"] || "development"
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

require './lib/peep'
require_relative 'lib/peep'


DataMapper.finalize
DataMapper.auto_upgrade!

get '/' do
	@peeps = Peep.all
	erb :index
end