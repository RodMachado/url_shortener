Rails.application.routes.draw do
  resources :url_catalogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/*url_hash', to: 'url_converters#show'

  root to: "url_converters#show"
end
