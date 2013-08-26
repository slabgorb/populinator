Populinator::Application.routes.draw do
  devise_for :users
  get "welcome/index"
  resources :languages

  resources :corpora

  resources :settlements

  resources :beings

  root "welcome#index"
end
