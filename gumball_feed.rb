require 'rubygems'
require 'sinatra'
require 'sinatra/static_assets'
require 'twitter'

require File.expand_path(File.join(%w{ . lib/helpers.rb}))

before do
  @title = "Gumball feed"
  @keywords = "Gumball, 3000, rally, feed, tweets"
  @description = "This application is a simple twitter based application which displays all tweets using the #Gumball3000 hashtag"
  @author = "Designed & developed, all except for the Gumball logo by StealthyGecko 2011"

  @search = Twitter::Search.new
  @hashtags = @search.hashtag("Gumball3000").language("en").no_retweets
end


get "/" do
  erb :index
end

get '/fresh_data' do
  erb :index, :layout => false
end
