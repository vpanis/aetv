Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :photos, :only => [:index, :show]
  get "before" => "photos#before"
  get "city" => "photos#city"
  get "ceremony" => "photos#ceremony"
  get "cocktail" => "photos#cocktail"
  get "dinner" => "photos#dinner"
  get "after" => "photos#after"
end
