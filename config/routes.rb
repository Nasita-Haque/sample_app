Rails.application.routes.draw do
  resources :tabemonos
  root 'static_page#home'
  get 'static_page/home'
  get 'static_page/help'
  get 'static_page/about'
  get 'static_page/contact'
end
