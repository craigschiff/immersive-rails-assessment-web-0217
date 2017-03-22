Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/guests/:id/new', to: 'appearances#guest_new', as: 'guest_new_appearance'
  get '/episodes/:id/new', to: 'appearances#episode_new', as: 'episode_new_appearance'
  post '/appearances/guests/:guest_id', to: 'appearances#guest_create', as: 'guest_create'
  post '/appearances/events/:episode_id', to: 'appearances#guest_create', as: 'guest_create'


  resources :appearances, only: ["create"]
  resources :guests
  resources :episodes
end
