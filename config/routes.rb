Rails.application.routes.draw do
  
  get 'plans/index'

  get 'plans/new'

  get 'plans/edit'

  get 'plans/show'

  get 'plans/destroy'

  get 'plans/create'

   root 'landing_pages#index'

    get '/success' => 'landing_pages#success'

    get '/about_us' => 'landing_pages#about_us'

    get '/contact_us' => 'landing_pages#contact_us'

    get '/programs' => 'landing_pages#programs'
end