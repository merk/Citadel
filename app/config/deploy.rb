set :application,   "ozfortress"
set :domain,        "ozfortress.com"
set :deploy_to,     "/home/ozfortress/sites/#{domain}"
set :app_path,      "app"
set :user,          "ozfortress"
set :use_sudo,      false
set :keep_releases, 3

set :repository,  "git@github.com:merk/Citadel.git"
set :scm,         :git
set :deploy_via, :remote_cache

set :model_manager, "doctrine"

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain                         # This may be the same as your `Web` server
role :db,         domain, :primary => true       # This is where Rails migrations will run

set :dump_assetic_assets, true
set :shared_files, ["app/config/parameters.ini"]
# set :shared_children, []