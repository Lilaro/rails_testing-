Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :links, only: [:show, :new, :create] do
    resource :upvotes, only: [:create]
    # resource :downvote, only: [:create]
  end
  root to: "links#index"
end
