DeliveryBoy::Application.routes.draw do
  post "api/deliveries/create"

  # get "delivery_people/new"

  # get "delivery_people/create"

  # get "delivery_people/edit"

  # get "delivery_people/update"

  # get "courier_companies/new"

  # get "courier_companies/create"

  # get "courier_companies/edit"

  # get "courier_companies/update"

  # get "sellers/new"

  # get "sellers/create"

  # get "sellers/edit"

  # get "sellers/update"

  # get "deliveries/new", as: "new_delivery"

  # post "deliveries/create", as: "create_deliveries"

  # get "deliveries/index", as: "deliveries"

  # get "deliveries/edit", as: "edit_delivery"

  # put "deliveries/update", as: "update_delivery"

  resources :sellers do 
    resources :courier_companies do 
      resources :delivery_people do 
        resources :deliveries
      end
    end
  end

  # root :to => 'home#index'
  root :to => 'sellers#index'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
