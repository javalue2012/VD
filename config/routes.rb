Rails.application.routes.draw do
  resources :ideas
  get 'mycontroll/index'
  get 'login/index'
   get '/mycontroll/timthanhcong'
  match '/login' => 'login#index' , via: [:get, :post]
  match '/checklogin' => 'login#checklogin' , via: [:get, :post]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  match '/search' => 'mycontroll#search' , via: [:get, :post]
  #hanh dong form tim view se duoc goi toi controll search
  match '/timthanhcong' => 'mycontroll#timthanhcong' , via: [:get, :post]
  match '/add' => 'mycontroll#add' , via: [:get, :post]
  match '/addthanhcong' => 'mycontroll#addthanhcong' , via: [:get, :post]
  match '/edit' => 'mycontroll#edit' , via: [:get, :post]
  match '/xulyedit' => 'mycontroll#xulyedit' , via: [:get, :post]
  match '/delete' => 'mycontroll#delete' , via: [:get, :post]
  match '/deletethanhcong' => 'mycontroll#deletethanhcong' , via: [:get, :post]
  root 'login#index'
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
