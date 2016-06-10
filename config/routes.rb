Rails.application.routes.draw do
  # Routes for the Spend resource:
  # CREATE
  get "/spends/new", :controller => "spends", :action => "new"
  post "/create_spend", :controller => "spends", :action => "create"

  # READ
  get "/spends", :controller => "spends", :action => "index"
  get "/spends/:id", :controller => "spends", :action => "show"

  # UPDATE
  get "/spends/:id/edit", :controller => "spends", :action => "edit"
  post "/update_spend/:id", :controller => "spends", :action => "update"

  # DELETE
  get "/delete_spend/:id", :controller => "spends", :action => "destroy"
  #------------------------------

  # Routes for the Budget resource:
  # CREATE
  get "/budgets/new", :controller => "budgets", :action => "new"
  post "/create_budget", :controller => "budgets", :action => "create"

  # READ
  get "/budgets", :controller => "budgets", :action => "index"
  get "/budgets/:id", :controller => "budgets", :action => "show"

  # UPDATE
  get "/budgets/:id/edit", :controller => "budgets", :action => "edit"
  post "/update_budget/:id", :controller => "budgets", :action => "update"

  # DELETE
  get "/delete_budget/:id", :controller => "budgets", :action => "destroy"
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
