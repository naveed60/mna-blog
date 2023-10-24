Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end
end
Rails.application.routes.draw do
  root "articles#index"

  resources :articles
end
