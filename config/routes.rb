EndlessScrollExample::Application.routes.draw do
	get 'posts/home'
	post 'posts/home'
	resources :posts, :only => [:index, :create]
	root :to => "posts#home"
end
