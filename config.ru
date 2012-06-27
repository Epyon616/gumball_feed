require 'rubygems'
require 'vendor/sinatra-1.3.2/lib/sinatra.rb'
require 'vendor/rack-1.4.1/lib/rack.rb'
Sinatra::Base.set(
  :run => false,
  :env => :production
)

require 'gumball_feed.rb'
run Sinatra::Application

FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/sinatra.log", "a")
$stdout.reopen(log)
$stderr.reopen(log)
