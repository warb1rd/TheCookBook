Rails.application.routes.draw do

root "users#index"

resources :users

resources :recipes                              

resources :sessions, only: [:new, :create]                      #doesn't create entire 7 routes. Only creates new and create.

# NEED TO UNDERSTAND WHY GET WORKS INSTEAD OF DELETE. CHECK APPLICATION.HTML FOR CLUES.
get "/logout" => "sessions#destroy", as: :logout                #if someone sends a delete request in logout, it'll do the action destroy


end


