Rails.application.routes.draw do
  
   root 'landing_pages#index'

    get '/success' => 'landing_pages#success'

    get '/about_us' => 'landing_pages#about_us'
end