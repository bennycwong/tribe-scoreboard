Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"

  get 'dashboard' => 'dashboard#index'
  get 'about' => 'high_voltage/pages#show', id: 'about'
  get 'faqs' => 'high_voltage/pages#show', id: 'faqs'
  get 'home' => 'high_voltage/pages#show', id: 'home'
end
