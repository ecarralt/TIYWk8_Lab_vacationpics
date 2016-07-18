Rails.application.routes.draw do

  use_doorkeeper


  root 'welcome#vacationpics', as: :welcome
  get 'vacations/home' => 'vacations#home', as: :home
  get 'vacations/showall' => 'vacations#showall', as: :vacations

  get 'vacations/new' => "vacations#new", as: :new_vacation
  post 'vacations/create' => "vacations#create", as: :create_vacation

  get 'vacations/edit' => 'vacations#edit', as: :edit_vacation
  get 'vacations/update' => 'vacations#update', as: :update_vacation

  delete 'vacations/delete' => 'vacations#delete', as: :delete_vacation

  get 'registration' => "users#new", as: :new_user
  post 'registration/create' => "users#create", as: :create_user


  post "/" => "sessions#create", as: :create_sign_in
  get "/logout" => "sessions#delete", as: :sign_out

  get 'photos/new' => "photos#new", as: :new_photo
  post 'photos/create' => "photos#create", as: :create_photo

  get '/api/me/photos' => "api/photos#index", as: :api_photos #returns all photos



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
