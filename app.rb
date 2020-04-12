require 'rubygems'
require 'sinatra'
require "sinatra/reloader" if development?
require 'sinatra/activerecord'

set :database, "sqlite3:database.db"

class Product < ActiveRecord::Base
end


get '/' do
  @products = Product.all
  erb :index
end

get '/about' do
  erb :about
end

get '/cart' do
  erb :cart
end
