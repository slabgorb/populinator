Populinator::Application.routes.draw do

  devise_for :users
  resources :languages do
    resources :corpora
  end

  resources :settlements

  resources :beings

  root "welcome#index"
end
