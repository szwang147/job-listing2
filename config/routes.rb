Rails.application.routes.draw do
  devise_for :users
  resources :jobs do
    resources :resumes
  end

  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
      resources :resumes
    end
  end

  namespace :account do
    resources :jobs
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "jobs#index"
end
