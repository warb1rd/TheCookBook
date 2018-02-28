Rails.application.routes.draw do


root "users#index"

resources :pages, only: [:index, :show]

resources :users

get "/users/:user_id/recipes" => "pages#show", as: :user_recipes

resources :recipes                              

resources :sessions, only: [:new, :create]                      #doesn't create entire 7 routes. Only creates new and create.

# NEED TO UNDERSTAND WHY GET WORKS INSTEAD OF DELETE. CHECK APPLICATION.HTML FOR CLUES.
delete "/logout" => "sessions#destroy", as: :logout                #if someone sends a delete request in logout, it'll do the action destroy

end


