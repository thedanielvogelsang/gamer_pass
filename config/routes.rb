Rails.application.routes.draw do
  get 'gamerpass', to: "gamerpass#landing"
  post 'user-signup', to: "gamerpass#signup"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
