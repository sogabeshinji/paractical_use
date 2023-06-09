Rails.application.routes.draw do
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # 顧客用
  namespace :public do
    root to: 'homes#top'
    get '/home/about' => 'homes#about', as: 'about'
    resources :items, only: [:index, :show] do
    end
    resources :registration, only: [:new, :create] do
    end
    resources :session, only: [:new, :create, :destroy] do
    end
    resources :customers, only: [:show, :edit, :updete] do
    end
      #add get :out, patch :withdraw
    resources :cart_items, only: [:index, :update, :destroy, :create] do
    end
      # add delete :destroy_all
    resources :orders, only: [:new, :create, :index, :show] do
      # add post :confirm, get :complete,
    end
  end
  
  namespace :admin do
    root to: 'homes#top'
    resources :items, only: [:index, :new, :create, :show, :edit, :updete] do
    end
    resources :customers, only: [:index, :show, :edit, :updete] do
    end
    resources :orders, only: [:show] do
    end
  end
  


end