Populinator::Application.routes.draw do
  devise_for :users
  resources :languages

  resources :corpora

  resources :settlements

  resources :beings

  root "welcome#index"
end
