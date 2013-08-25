Populinator::Application.routes.draw do
  get "welcome/index"
  resources :languages

  resources :corpora

  resources :settlements

  resources :beings

  root "welcome#index"
end
