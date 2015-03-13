Rails.application.routes.draw do
  resources :books
  root 'static_pages#table'
  get 'table' => 'static_pages#table'
  get 'mobile' => 'static_pages#mobile'
  get 'table_search' => 'static_pages#table_search'
  patch '/' => 'books#update', as: 'update_books'
  post '/table_search' => 'static_pages#table_search'
end
