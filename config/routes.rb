Rails.application.routes.draw do
  root to: 'home#index'

  get 'portfolio/experiential', to: 'home#experiential'
  get 'portfolio/architecture', to: 'home#architecture'
  get 'portfolio/aerial', to: 'home#aerial'
  get 'portfolio/adventure', to: 'home#adventure'

end
