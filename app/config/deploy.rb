set :application,         "ozfortress"
set :domain,              "ozfortress.com"
set :deploy_to,           "/home/ozfortress/citadel"
set :app_path,            "app"
set :user,                "ozfortress"
set :use_sudo,            false
set :keep_releases,       3

set :repository,          "git@github.com:merk/Citadel.git"
set :scm,                 :git
set :deploy_via,          :remote_cache

set :model_manager,       "doctrine"

role :web,                "demoman.ozfortress.com"
role :app,                "demoman.ozfortress.com"
role :db,                 "demoman.ozfortress.com", :primary => true

set :dump_assetic_assets, true
set :use_composer,        true
set :shared_files,        ["app/config/parameters.ini"]
# set :shared_children,   []