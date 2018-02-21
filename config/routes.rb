Rails.application.routes.draw do
  resources :news
  resources :trip_schedule_details
  resources :trip_schedules
  resources :cities
  devise_for :users
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
