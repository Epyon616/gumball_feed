require File.expand_path(File.join(%w{ . gumball_feed.rb}))
require '/home/geckorichmond/.gems/gems/rack-1.3.0/lib/rack.rb' 
require '/home/geckorichmond/.gems/gems/sinatra-1.2.6/lib/sinatra.rb'
run Sinatra::Application

