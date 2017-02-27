Rails.application.routes.draw do
  resources :stores
  resources :reports do
    collection do
      get 'thanks'
    end
  end
  root "reports#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
