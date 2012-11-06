Mailview::Engine.routes.draw do
	root to: 'mails#index'

	resources :mails, only: [:index]
end
