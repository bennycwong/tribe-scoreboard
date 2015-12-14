Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"

  get 'dashboard' => 'dashboard#index'
  get 'about' => 'high_voltage/pages#show', id: 'about'
  get 'home' => 'high_voltage/pages#show', id: 'home'
end
