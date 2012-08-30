Blogger::Application.routes.draw do
  resources :authors

  #get "tags/index"

  #get "tags/show"
  root :to => "articles#index"

 resources :articles
 resources :comments
 resources :tags
	resources :author_sessions
	match 'login' => 'author_sessions#new', :as => :login
	match 'logout' => 'author_sessions#destroy', :as => :logout

end
