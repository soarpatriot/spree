set :stage, :local
set :server_name, "staging.cityhub.me"

# set :repo_url, 'git@git.rfdoa.cn:java/price.git'
set :branch, "master"

set :log_level, :debug
set :deploy_to, "/data/www/spree"

set :use_sudo, true
set :thin_config, "#{shared_path}/config/thin.yml"
set :thin_pid, "#{shared_path}/tmp/pids/thin.5000.pid"

#set:ssh_option,{
#  keys: %w(/home/liuhaibao/.ssh/id_rsa),
#  forward_agent: true
#}

# set :password, ask('Server password', nil)
server fetch(:server_name), user: 'soar', port: 22, password: fetch(:password), roles: %w{web app db}

#server fetch(:server_name), user: "soar", roles: %w{web app db}


