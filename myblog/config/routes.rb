Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :comments, only: [:create, :destroy]
    get 'likes', to: 'posts#like'
  end

  resources :categories

  root 'posts#index'

end
