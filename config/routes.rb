Rails.application.routes.draw do
	
  get 'welcome/index'

  resources :quips do
  	resources :diffs
  end
  
  root 'quips#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
