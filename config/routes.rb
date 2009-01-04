ActionController::Routing::Routes.draw do |map|
  map.resource :rankings
  map.root :controller => 'rankings'
end
