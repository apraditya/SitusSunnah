ActionController::Routing::Routes.draw do |map|
  map.resource :account, :except => :destroy
  map.resources :password_resets, :only => [:new, :create, :edit, :update]
  map.resources :users, :collection => {:impersonate => :post}
  map.resource :user_session, :only => [:new, :create, :destroy]
  map.login 'login', :controller => "user_sessions", :action => "new"
  map.logout 'logout', :controller => "user_sessions", :action => "destroy"
map.activate '/activate/:activation_code', :controller => 'activations', :action => 'new'
map.finish_activate '/finish_activate/:id', :controller => 'activations', :action => 'create'

  map.register 'register', :controller => "accounts", :action => "new"
  map.root :controller => "pages", :action => "home"
  map.pages 'pages/:action', :controller => "pages"   
  
  map.resource :health_monitor, :controller => "health_monitor", :only => :show, :member => { :monitor_health => :get } 
  Jammit::Routes.draw(map)
end
#== Route Map
# Generated on 18 May 2010 15:42
#
# Could not find Test::Unit 2.0, ignoring
