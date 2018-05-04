Rails.application.routes.draw do

  root 'welcome#index'  #Intro for first time visitors

  get '/home', to: 'welcome#show'  #Home page

  get '/about', to: 'info#about' #About Us

  get '/faq', to: 'info#faq'  #FAQ

  get '/brands-we-carry', to: 'info#brands'  #Brands we carry

  get '/how-it-works', to: 'info#hiw' #How it works

  get '/rental', to: 'info#rental'  #Rental

  get '/co-op', to: 'info#coop'  #Co-op

  # get '/', to: 'xxxx#yyyy' #Survey1
  #
  # get '/', to: 'xxxx#yyyy'   #Survey2
  #
  # get '/', to: 'xxxx#yyyy'  #Survey3

  get '/dashboard', to: 'users#show'  #Users account page

  get '/auth/facebook', as: 'facebook_login'
  get '/auth/google', as: 'google_login'
  get '/auth/:provider/callback', to: 'sessions#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/register', to: 'users#new'
  post '/register', to: 'users#create'

  resources :users, only: [:create, :new, :show, :edit, :update, :destroy]

  namespace :admin do
   get '/dashboard', to: 'dashboard#show'
   resources :users
  end

end
