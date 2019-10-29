Rails.application.routes.draw do
  resources :hashketeers, except: [:new, :edit]
end
