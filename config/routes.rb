Playlist::Application.routes.draw do
  
  # ActiveAdmin
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  root :to => "admin/dashboard#index"
end
