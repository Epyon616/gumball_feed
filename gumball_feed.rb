require 'rubygems'
require 'sinatra'
require 'sinatra/static_assets'
require 'twitter'

before do
 @search = Twitter::Search.new
end

get "/" do
  @title = "Gumball feed"
  @hashtags = @search.hashtag("Gumball3000").language("en").no_retweets
  erb :index
end
