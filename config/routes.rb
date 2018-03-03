Rails.application.routes.draw do
  root 'homes#home'
  resource :users
  resource :stories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
