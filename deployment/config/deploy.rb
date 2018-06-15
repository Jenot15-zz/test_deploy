lock '3.9.0'

set :application, 'rails_test'
set :repo_url, 'git@github.com:Jenot15/test_deploy.git'
set :deploy_to, -> { "/home/deploy/apps/#{fetch(:application)}" }
