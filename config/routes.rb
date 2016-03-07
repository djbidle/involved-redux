Rails.application.routes.draw do
 
  root 'involved#home'
  
  get '/trending' => 'involved#trending' #may be moved to data#trending

  get '/graph' => 'involved#graph' #may be moved to data#graph (for admins only)
  
  get 'view_bill' => 'involved#view_bill' #may be moved to data#bills
  
  get '/signup' => 'users#new' #signup page is complete
  
  get '/login' => 'sessions#new' #login page is complete
  
  post '/login' => 'sessions#create' #complete
  
  delete '/logout' => 'sessions#destroy' #complete
  
  get '/profile' => 'users#profile' #used to redirect user to profile of logged in else to login page
  
  get '/users' => 'users#index' #complete
  
  get '/bills' => 'data#show' #probably will not be used, was for testing 
  
  get '/sessions' => 'data#sessions' #probably will not be used, was for testing
  
  get '/search' => 'data#search' #building search page
  
  resources :data
  
  resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
