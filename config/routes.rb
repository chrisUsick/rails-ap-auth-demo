Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get '/admin', to: 'welcome#admin'
  get '/very-admin', to: 'welcome#very_admin'
  post '/api/auth/google', to: 'google_auth#sign_in'
end
