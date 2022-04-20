Rails.application.routes.draw do
  get '/' => 'home#top'
  resources :posts
  get 'search/posts' => 'posts#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end