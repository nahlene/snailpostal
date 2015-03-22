Rails.application.routes.draw do
  
  authenticated :user do                   
    get '/', to: 'home#user'
  end
  
  root to: "home#index"

  devise_for :users


end
