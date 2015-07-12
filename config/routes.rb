Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :lightings
=begin
    get "/lightings" index
    post "/lightings" create
    delete "/lightings/:id" destroy
    get "/lightings/:id" show
    get "/lightings/new" new
    get "/lightings/:id/edit" edit
    patch "/lightings/:id" update
    put "/lightings/:id" update  
=end

  resources :comparisons
=begin
    get "/comparisons" index
    post "/comparisons" create
    delete "/comparisons/:id" destroy
    get "/comparisons/:id" show
    get "/comparisons/new" new
    get "/comparisons/:id/edit" edit
    patch "/comparisons/:id" update
    put "/comparisons/:id" update  
=end

  get 'paso1', to:'comparisons#step1'

  get 'paso2', to:'lightings#step2'

  get 'paso3', to:'comparisons#step3'

  get 'resultado', to:'comparisons#result'

  get 'descargarpdf', to:'comparisons#downloadpdf'

  get 'mostrarpdf', to:'comparisons#showpdf'

  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
  

  # Example of regular route:
     
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
