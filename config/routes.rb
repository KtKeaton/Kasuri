Rails.application.routes.draw do
  devise_for :managers
  devise_for :users
  root to: "welcome#index"
end
