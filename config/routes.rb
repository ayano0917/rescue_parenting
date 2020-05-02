Rails.application.routes.draw do
  # get 'main/index'
  devise_for :parents, controllers: {
    sessions:      'parents/sessions',
    passwords:     'parents/passwords',
    registrations: 'parents/registrations'
  }
  devise_for :child_minders, controllers: {
    sessions:      'child_minders/sessions',
    passwords:     'child_minders/passwords',
    registrations: 'child_minders/registrations'
  }
  root to: "introductions#index"
  get 'main' => 'main#index'

  resources :main, only: [:new ,:index, :show, :create, :edit, :update, :destroy] 
  resources :gardens, only: [:new ,:index, :show, :create, :edit, :update, :destroy] 
  resources :sign_ups, only: [:new, :create, :edit, :update, :destroy]

end