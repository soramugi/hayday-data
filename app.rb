require 'sinatra'
require_relative 'models/init'

get'/' do
  @date = File.mtime("./data/item_list.csv")
  @items = Items.new.list
  haml :index
end
