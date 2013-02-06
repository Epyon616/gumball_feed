require 'rubygems'
require 'sinatra'
require './gumball_feed'

run Sinatra::Application

FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/sinatra.log", "a")
$stdout.reopen(log)
$stderr.reopen(log)
