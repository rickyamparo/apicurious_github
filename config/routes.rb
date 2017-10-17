Rails.application.routes.draw do
  root 'home#index'

  get '/auth/github', to: 'sessions#create', as: 'github_login'
  get '/auth/github/callback', :to => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/commits', to: "commits#index"
end
