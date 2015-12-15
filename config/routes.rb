Rails.application.routes.draw do
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  get 'dashboard' => 'dashboard#index'
  get 'about' => 'high_voltage/pages#show', id: 'about'
  get 'faqs' => 'high_voltage/pages#show', id: 'faqs'
  get 'home' => 'high_voltage/pages#show', id: 'home'
end
