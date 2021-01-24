Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth/v1/user'
  
  namespace :user do
    namespace :v1 do
      resources :users
      resources :orders
    end
  end
end
