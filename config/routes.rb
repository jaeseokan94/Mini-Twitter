Rails.application.routes.draw do

  root :to =>"remove#read"
  
  get ":controller(/:action(/:id))"
  post":controller(/:action(/:id))"
  
end