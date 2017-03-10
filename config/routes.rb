Rails.application.routes.draw do

  resources :users

  resources :products do
    resources :comments
  end
  
  resources :orders, only: [:index, :show, :create, :destroy]
  
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get 'static_pages/landing_page'

  post 'static_pages/thank_you'

  root 'static_pages#index'

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  delete 'logout' => 'sessions#destroy', :controllers => { :registraions => "user_registration"}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
