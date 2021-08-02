Rails.application.routes.draw do
  get '/' => "playlist#index"
  get "/search" => "youtube#search"
  get "/playlist/:playlist_id/video/delete/:id" => "youtube#delete"
  get "/new/playlist" => "playlist#new"
  post "/create/playlist" => "playlist#create"
  get "/delete/:id" => "playlist#delete"
  get "/playlist/:id/detail" => "playlist#detail"
  post "playlist/:playlist_id/register/:video_id" => "playlist#register"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
