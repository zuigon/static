ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'pages', :action => 'home'
  map.resources :pages
  map.resources :settings, :except => :show
  map.resources :uploads, :only => [:new, :create, :destroy]
  map.admin '/admin', :controller => 'pages', :action => 'index'
  map.files '/files', :controller => 'uploads', :action => 'index'
  map.slug '/:id', :controller => 'pages', :action => 'show'
end
