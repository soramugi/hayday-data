require 'sinatra'
require_relative 'models/init'

get'/' do
  @items = Items.new.list
  haml :index
end
