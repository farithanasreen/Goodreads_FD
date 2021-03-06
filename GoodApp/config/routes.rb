Rails.application.routes.draw do
  resources :user
  #resources :books

  get 'genres/show'

  get 'genres/index' => 'genres#index'

  get 'publisher/show'

  get 'publisher/home'

  get 'author/show'

  get 'author/home'

  get 'books/index' 

  get 'books/show' 

  get 'auth/:provider/callback', to: 'sessions#create'
  
  get 'auth/failure', to: redirect('/')
  
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  root 'homepage#show'

  get 'genre/show'

  get 'books/fiction'

  get 'books/booklist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/about', :to => 'authors#about'
  get '/books', :to => 'authors#books'
  
  get '/show', :to => 'homepage#show'

  get '/show' => 'homepage#show'

  post '/books/review' => 'review#create'

end
