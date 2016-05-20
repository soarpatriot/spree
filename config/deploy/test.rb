set :stage, :test

set :repo_url, 'git@git.rfdoa.cn:java/price.git'
set :branch, "dev"

set :log_level, :debug
set :deploy_to, "/data/www/spree"

set :use_sudo, true
set :thin_config, "#{shared_path}/config/thin.yml"
set :thin_pid, "#{shared_path}/tmp/pids/thin.3000.pid"

set :sidekiq_config, "#{shared_path}/config/sidekiq.yml" 
set :sidekiq_pid, "#{shared_path}/tmp/pids/sidekiq.pid" 


# set :password, ask('Server password', nil)
# server fetch(:server_name), user: 'deploy', port: 22, password: fetch(:password), roles: %w{web app db}

server fetch(:server_name), user: "deploy",password: "deploy", roles: %w{web app db}


