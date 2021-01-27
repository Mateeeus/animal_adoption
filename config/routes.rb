Rails.application.routes.draw do
  #get 'adoptions/index'
  #get 'adoptions/show'
  #get 'adoptions/new'
  #get 'adoptions/create'
  #get 'adoptions/edit'
  #get 'adoptions/update'
  #get 'adoptions/destroy'
  resources :adoptions
  #get 'animals/index'
  #get 'animals/show'
  #get 'animals/new'
  #get 'animals/create'
  #get 'animals/edit'
  #get 'animals/update'
  #get 'animals/destroy'
  resources :animals

  root to: "animals#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
