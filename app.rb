require 'sinatra'
require 'sequel'

DB = Sequel.connect(ENV.fetch('DATABASE_URL'))

get '/' do
  erb :index
end
