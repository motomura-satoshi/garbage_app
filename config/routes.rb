Rails.application.routes.draw do

  get '/garbages', to: 'garbages#index'
  get '/garbages/new', to: 'garbages#new'
  post '/garbages', to: 'garbages#create'
  get '/garbages/:id/edit', to: 'garbages#edit'
  patch '/garbages/:id', to: 'garbages#update'

end
