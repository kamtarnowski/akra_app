Rails.application.routes.draw do
  resources :books
  root 'static_pages#table'
  get 'table' => 'static_pages#table'
  get 'mobile' => 'static_pages#mobile'
end
