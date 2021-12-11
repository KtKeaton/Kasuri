Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions'}
  devise_for :managers, controllers: {sessions: 'managers/sessions'}

  root to: "welcome#index"

end
