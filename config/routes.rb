Rails.application.routes.draw do
  root "personal_infos#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :personal_infos
end
