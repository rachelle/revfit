Rails.application.routes.draw do
  
   root 'landing_pages#index'

    get '/success' => 'landing_pages#success'

end