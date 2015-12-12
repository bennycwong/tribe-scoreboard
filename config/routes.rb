Rails.application.routes.draw do

  get 'about' => 'high_voltage/pages#show', id: 'about'
end
