Rails.application.routes.draw do
  resources :books
  root 'static_pages#table'
  get 'mobile' => 'static_pages#mobile'
  get 'table_search' => 'static_pages#table_search'
  get 'mobile_search' => 'static_pages#mobile_search'
  patch '/' => 'books#update', as: 'update_books'
  post '/table_search' => 'static_pages#table_search'
  post '/mobile_search' => 'static_pages#mobile_search'
end
