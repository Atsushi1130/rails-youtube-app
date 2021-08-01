Rails.application.routes.draw do
  get '/' => "playlist#index"
  get "/search" => "youtube#search"
  get "/new/playlist" => "playlist#new"
  post "/create/playlist" => "playlist#create"
  get "/delete/:id" => "playlist#delete"
  get "/playlist/:id/detail" => "playlist#detail"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
