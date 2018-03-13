Rails.application.routes.draw do
  root to: "tweets#new"
  resources :tweets
end
