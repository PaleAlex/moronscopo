Rails.application.routes.draw do
  resources :posts

  root 'posts#home'

  get 'ariete', to: 'posts#show1'
  get 'toro', to: 'posts#show2'
  get 'gemelli', to: 'posts#show3'
  get 'cancro', to: 'posts#show4'
  get 'leone', to: 'posts#show5'
  get 'vergine', to: 'posts#show6'
  get 'bilancia', to: 'posts#show7'
  get 'scorpione', to: 'posts#show8'
  get 'sagittario', to: 'posts#show9'
  get 'capricorno', to: 'posts#show10'
  get 'acquario', to: 'posts#show11'
  get 'pesci', to: 'posts#show12'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
