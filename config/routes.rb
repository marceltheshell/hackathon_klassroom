Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  get 'welcome/index'

  resources :sessions
  resources :criteria
  resources :seating_charts
  resources :students
  resources :klasses do
    collection { post :import }
  end

  resources :users


##################################################################################
#             Prefix Verb   URI Pattern                        Controller#Action
#               root GET    /                                  welcome#index
#      welcome_index GET    /welcome/index(.:format)           welcome#index
#           sessions GET    /sessions(.:format)                sessions#index
#                    POST   /sessions(.:format)                sessions#create
#        new_session GET    /sessions/new(.:format)            sessions#new
#       edit_session GET    /sessions/:id/edit(.:format)       sessions#edit
#            session GET    /sessions/:id(.:format)            sessions#show
#                    PATCH  /sessions/:id(.:format)            sessions#update
#                    PUT    /sessions/:id(.:format)            sessions#update
#                    DELETE /sessions/:id(.:format)            sessions#destroy
#           criteria GET    /criteria(.:format)                criteria#index
#                    POST   /criteria(.:format)                criteria#create
#      new_criterium GET    /criteria/new(.:format)            criteria#new
#     edit_criterium GET    /criteria/:id/edit(.:format)       criteria#edit
#          criterium GET    /criteria/:id(.:format)            criteria#show
#                    PATCH  /criteria/:id(.:format)            criteria#update
#                    PUT    /criteria/:id(.:format)            criteria#update
#                    DELETE /criteria/:id(.:format)            criteria#destroy
#     seating_charts GET    /seating_charts(.:format)          seating_charts#index
#                    POST   /seating_charts(.:format)          seating_charts#create
#  new_seating_chart GET    /seating_charts/new(.:format)      seating_charts#new
# edit_seating_chart GET    /seating_charts/:id/edit(.:format) seating_charts#edit
#      seating_chart GET    /seating_charts/:id(.:format)      seating_charts#show
#                    PATCH  /seating_charts/:id(.:format)      seating_charts#update
#                    PUT    /seating_charts/:id(.:format)      seating_charts#update
#                    DELETE /seating_charts/:id(.:format)      seating_charts#destroy
#           students GET    /students(.:format)                students#index
#                    POST   /students(.:format)                students#create
#        new_student GET    /students/new(.:format)            students#new
#       edit_student GET    /students/:id/edit(.:format)       students#edit
#            student GET    /students/:id(.:format)            students#show
#                    PATCH  /students/:id(.:format)            students#update
#                    PUT    /students/:id(.:format)            students#update
#                    DELETE /students/:id(.:format)            students#destroy
#     import_klasses POST   /klasses/import(.:format)          klasses#import
#            klasses GET    /klasses(.:format)                 klasses#index
#                    POST   /klasses(.:format)                 klasses#create
#          new_klass GET    /klasses/new(.:format)             klasses#new
#         edit_klass GET    /klasses/:id/edit(.:format)        klasses#edit
#              klass GET    /klasses/:id(.:format)             klasses#show
#                    PATCH  /klasses/:id(.:format)             klasses#update
#                    PUT    /klasses/:id(.:format)             klasses#update
#                    DELETE /klasses/:id(.:format)             klasses#destroy
#              users GET    /users(.:format)                   users#index
#                    POST   /users(.:format)                   users#create
#           new_user GET    /users/new(.:format)               users#new
#          edit_user GET    /users/:id/edit(.:format)          users#edit
#               user GET    /users/:id(.:format)               users#show
#                    PATCH  /users/:id(.:format)               users#update
#                    PUT    /users/:id(.:format)               users#update
#                    DELETE /users/:id(.:format)               users#destroy
##################################################################################



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
