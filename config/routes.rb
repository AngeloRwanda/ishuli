Rails.application.routes.draw do
	resources :students
	resources :ikigos

	root to: 'ikigos#ahabanza'


end
