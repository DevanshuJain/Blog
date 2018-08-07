Rails.application.routes.draw do
  devise_for :users
  get 'blog/index'
  default_url_options :host => "0.0.0.0:3000"

# resources :session

#   resources :users do
#     member do
#       get :confirm_email
#     end
#   end
# resources :ribbits




  resources :articles

# root 'session#new'
    root 'blog#index'
  # root 'device/session/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
