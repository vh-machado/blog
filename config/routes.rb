Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments, only: %i[create destroy]
  end
  resource :login, only: %i[new create destroy], path_names: { new: '' }
  resources :users
end
