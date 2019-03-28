Rails.application.routes.draw do

  get '/', to: 'static_pages#top'
  get 'static_pages/index' , to:  'static_pages#index'
  get 'static_pages/help',  to: 'static_pages#help'
  get 'static_pages/about',  to: 'static_pages#about'
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
