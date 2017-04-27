Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home'
  get '/signup',    to: 'users#new'
  post '/signup',   to: 'users#create'
  get '/contact',   to: 'pages#contact'
  get '/about',     to: 'pages#about'
  get 'classes-list', to: 'pages#classes-list'
  get 'classes-detail', to: 'pages#classes-detail'
  get 'style-guide', to: 'pages#style-guide'
  get 'testimonial', to: 'pages#testimonial'
  get 'pricing', to: 'pages#pricing'
  get 'blog-default', to: 'pages#blog-default'
  get 'blog-single', to: 'pages#blog-single'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :pages, only: [:show]
  resources :categories, only: [:show]
  get 'password_resets/new'
  get 'password_resets/edit'


  mount Ckeditor::Engine => '/ckeditor'
  
  namespace :admin do
    root :to => '/pages#index'
    resources :types, except: [:show]
    resources :menus, except: [:show]
    resources :pages  #/admin/pages
    resources :categories


  end
  
  # Page.where.not("slug" => nil).all.each do |page|
  #   get "/#{page.slug}", controller: "pages", action: "show", id: page.id
  # end
  
end




