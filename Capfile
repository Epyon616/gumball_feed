load 'deploy' if respond_to?(:namespace) # cap2 differentiator

default_run_options[:pty] = true

# be sure to change these
set :user, 'geckorichmond'
set :website, "gumball_feed.stealthygecko.com"
set :domain, '208.113.235.4'
set :application, 'gumball_feed'

# the rest should be good
set :repository,  "#{user}@#{domain}:/home/#{user}/git/#{application}.git"
set :deploy_to, "/home/#{user}/#{website}"
set :deploy_via, :remote_cache
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end