Rails.application.routes.draw do

  resources :users

  mount Mailview::Engine => "/mailview"
end
