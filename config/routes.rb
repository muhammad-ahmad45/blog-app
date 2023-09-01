Rails.application.routes.draw do
    root "articles#index"
    get '/articles/front', to: "articles#index"
    
    # resourceful routing
    resources :articles do
      resources :comments
      end
    
    #   # namespace
    # namespace :admin do
    #   resources :articles, :comments
    # end
    
    # # scope
    # scope '/admin' do
    #   resources :articles, :comments
    # end
    
    # # scope module
    # scope module: 'admin' do
    #   resources :articles, :comments
    # end
    
    # #shallow nesting
    # resources :articles do
    #   resources :comments, only: [:index, :new, :create]
    # end
    # resources :comments, only: [:show, :edit, :update, :destroy]   
    
    # #concerns
    # concern :commentable do
    #    resources :comments
    # end

    # concern :image_attachable do
    #    resources :images, only: :index
    # end
    
    # resources :messages, concerns: :commentable

    # resources :articles, concerns: [:commentable, :image_attachable]
   
    # collection
    # resources :articles do
    #   collection do
    #     get 'new'
    #   end
    # end
    # # member
    # resources :articles do
    #   member do
    #     get 'edit'
    #   end
    # end

    
    # Custom routes
    # get '/articles/:id', to: 'articles#show', as: 'article'
    # get '/articles/:id/edit', to:  'articles#edit'
    # get 'articles/:id/profile', to: 'articles#show'
    # get "/articles", to: "articles#index"
    # get "/articles/:id", to: "articles#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
