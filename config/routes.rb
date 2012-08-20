Blogger::Application.routes.draw do
  resources :authors

  #get "tags/index"

  #get "tags/show"
  root :to => "articles#index"

 resources :articles
 resources :comments
 resources :tags
 
end
