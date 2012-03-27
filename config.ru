require File.expand_path(File.join(%w{ . gumball_feed.rb}))
run Sinatra::Application

FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/sinatra.log", "a")
$stdout.reopen(log)
$stderr.reopen(log)