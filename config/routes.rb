Rails.application.routes.draw do
  root 'devices#index'
  # Routes for the Device resource:
  # CREATE
  get "/devices/new", :controller => "devices", :action => "new"
  post "/create_device", :controller => "devices", :action => "create"

  # READ
  get "/devices", :controller => "devices", :action => "index"
  get "/devices/:id", :controller => "devices", :action => "show"

  # UPDATE
  get "/devices/:id/edit", :controller => "devices", :action => "edit"
  post "/update_device/:id", :controller => "devices", :action => "update"

  # DELETE
  get "/delete_device/:id", :controller => "devices", :action => "destroy"
  #------------------------------

  # Routes for the Devicereading resource:
  # CREATE
  get "/devicereadings/new", :controller => "devicereadings", :action => "new"
  post "/create_devicereading", :controller => "devicereadings", :action => "create"
  post "/create_devicereading_hologram", :controller => "devicereadings", :action => "create_json"

  # READ
  get "/devicereadings", :controller => "devicereadings", :action => "index"
  get "/devicereadings/:id", :controller => "devicereadings", :action => "show"

  # UPDATE
  get "/devicereadings/:id/edit", :controller => "devicereadings", :action => "edit"
  post "/update_devicereading/:id", :controller => "devicereadings", :action => "update"

  # DELETE
  get "/delete_devicereading/:id", :controller => "devicereadings", :action => "destroy"
  #------------------------------

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
