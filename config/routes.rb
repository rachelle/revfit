Rails.application.routes.draw do
  
  root 'landing_pages#index'

    get '/success' => 'landing_pages#success'

    get '/about_us' => 'landing_pages#about_us'

    get '/contact_us' => 'landing_pages#contact_us'

    get '/programs' => 'landing_pages#programs'

    resources :plans
end