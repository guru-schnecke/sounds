Rails.application.routes.draw do

  get 'songs/index'
  get 'songs/create'
  get 'songs/new'
  get 'songs/update'
  get 'songs/show'
  get 'songs/edit'
  get 'songs/destroy'
  resources :artists do # /artists
    resources :albums #/artists/1/albums
  end

  resources :albums do
    resources :songs
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'welcome/index' # localhost:3000/welcome/index
  # get 'welcome/:id', to: 'welcome#holdon'
  # #look for show method in welcome controller
  root 'artists#index' # home page on localhost:3000
end


=begin 
  GET /welcome/index - default welcome
  GET /welcome/:id  - show file

=end