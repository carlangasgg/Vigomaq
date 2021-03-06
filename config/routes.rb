Rails.application.routes.draw do
  
  get 'tienda/Arriendo'

  get 'tienda/Venta'

  resources :categoria

  resources :modelos

  resources :marcas

  resources :tipo_productos

  get 'admin/index'

  #post ':controller(/:action(/:id))'
  get  ':controller(/:action(/:id))'
  
  #Lo necesario para el ActionMailer
  get 'contact' => "contact#index"
  post 'contact' => "contact#create"
  
  resources :products

  #get "products/index" 
  #get "products/new"
  #get "products/edit"


  devise_for :users
  get 'inicio/index'

  get 'inicio/empresa'

  get 'carro_compras/index'
  get 'tienda/index'


  #Anexando a prueba  
  #get "/inicio/prueba" => "inicio#prueba"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'inicio#index'


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


  #DELETE 'users/sign_out' => "devise/sessions#destroy"
end
