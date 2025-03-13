Rails.application.routes.draw do
  root 'wikis#index'

  resources :users, only: [:show] do
    resources :settings, only: [:index, :edit, :update]
  end

  resources :wikis, only: [:index, :show, :new, :create, :edit, :update] do
    resources :wiki_topics, only: [:index, :show, :new, :create, :edit, :update] do
      resources :wiki_pages, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    end
  end
end
