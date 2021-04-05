Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles do
    resources :comments
  end


  #  namespace :admin do
  #    resources :articles, :comments
  #  end


  # scope module: 'admin' do
  #   resources :articles, :comments
  # end

  # scope module: ''
  # resources  :articles, module: admin


resources :articles, module: 'admin'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
