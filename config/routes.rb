Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"

  get 'about' => 'high_voltage/pages#show', id: 'about'
end
