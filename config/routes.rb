Rails.application.routes.draw do
  resources :covid_questions
  resources :stores
  resources :reports do
    collection do
      get 'thanks'
    end
  end
  root "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
