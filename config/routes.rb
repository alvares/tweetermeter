ActionController::Routing::Routes.draw do |map|
  map.resources :rankings
  map.root :controller => 'rankings'
end
