Rails.application.routes.draw do
  root "subs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :subs do
    resources :topics
  end


  ### NESTED ROUTING
  ### index in topics
  ### get '/sub/:sub_id/topics, to: "topic:index'
end
