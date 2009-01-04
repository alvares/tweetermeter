set :domain, "deploy@dewey.ws"
set :application, "tweetermeter"
set :deploy_to, "/var/www/u/apps/#{application}"
set :repository, "git@github.com:retr0h/#{application}.git"
set :scm, "git"
set :rake_cmd, 'rake'
set :app_user, 'deploy'
set :app_group, 'deploy'
