Rails.application.routes.draw do
  resources :books
  root 'static_pages#table'
  get 'static_pages/table' => 'static_pages#table'
  get 'static_pages/mobile' => 'static_pages#mobile'
end
