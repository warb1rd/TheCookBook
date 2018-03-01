Rails.application.routes.draw do

root "users#index"

resources :pages, only: [:index, :show]

resources :users



get "/users/:user_id/recipes" => "pages#show", as: :user_recipes

resources :recipes do
    resources :comments
end                           


resources :sessions, only: [:new, :create]                      #doesn't create entire 7 routes. Only creates new and create.

delete "/comments/:id" => "comments#destroy", as: :delete_comment             #if someone sends a delete request in logout, it'll do the action destroy

delete "/logout" => "sessions#destroy", as: :logout             #if someone sends a delete request in logout, it'll do the action destroy

end


