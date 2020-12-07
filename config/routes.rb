Rails.application.routes.draw do
  get 'registrations/index'
  get 'registrations/regist'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
