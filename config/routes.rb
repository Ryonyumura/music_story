Rails.application.routes.draw do

  get 'comments/show'
  get 'comments/new'
  get '/' , to:  'static_pages#index'
  get 'static_pages/help',  to: 'static_pages#help'
  get 'static_pages/about',  to: 'static_pages#about'
  resource :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
