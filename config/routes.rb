Mimocore::Application.routes.draw do   

  use_doorkeeper
  
  devise_for :users
  
  # Routes for API mimocore
  namespace :api do
      namespace :v1 do
        get "/streams" => "streams#index"
        post "/streams" => "streams#create"   
          
        get "/biz" => "businesses#index"    
        post "/biz" => "businesses#create"     
        put "/biz" => "businesses#update"
        delete "/biz/delete" => "businesses#delete"
          
        #resources :business, :as => "biz", :only => [:index, :create]
      end
      namespace :v2 do
        # routes for version 2 API REST
      end
  end  
   
  # Routes for school web application
  namespace :school do
     get "/home"    => "home#index"
     get "/lesson"  => "lesson#index"
  end
  
  
  
  
  
  
  
  # mount Doorkeeper::Engine => '/oauth'


  # resources :oauth_clients
  # 
  #   match '/oauth/test_request',  :to => 'oauth#test_request',  :as => :test_request
  # 
  #   match '/oauth/token',         :to => 'oauth#token',         :as => :token
  # 
  #   match '/oauth/access_token',  :to => 'oauth#access_token',  :as => :access_token
  # 
  #   match '/oauth/request_token', :to => 'oauth#request_token', :as => :request_token
  # 
  #   match '/oauth/authorize',     :to => 'oauth#authorize',     :as => :authorize
  # 
  #   match '/oauth',               :to => 'oauth#index',         :as => :oauth

  # resources :articles

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
  # match ':controller(/:action(/:id(.:format)))'                    
                                   
  
  
  # resources :chatroom
  #   root :to => 'index#index'
  # 
  #   match "/chat/:id" => "chat#view"
  #   match "/new" => "chat#new"
   
end
