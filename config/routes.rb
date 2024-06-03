Rails.application.routes.draw do
  root to: 'household_accounts#index'
  resources :household_accounts
  resources :budgets
end
