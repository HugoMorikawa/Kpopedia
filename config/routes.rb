Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'pops/company' => 'pops#company'
  get 'pops/generation' => 'pops#generation'
  get 'pops/vocabulary' => 'pops#vocabulary'
  get 'pops/diagnosis' => 'pops#diagnosis'
  get 'pops/group' => 'pops#group'
  get 'pops/song' => 'pops#song'
  get 'pops/index' => 'pops#index'
  resources :pops
  root 'pops#index'
  get 'comments/new' => 'comments#new'
  post 'comments' => 'comments#create'
  delete 'tweets/:id' => 'tweets#destroy'
end
