Rails.application.routes.draw do
  resources :homescreen
  resources :order

  root to: "main#index"
  post "/login" => "main#login"
  post "/new_order" => "homescreen#order"
  get "/update_order" => "order#index"
end
