Rails.application.routes.draw do
  resources :solicitacoes
  resources :empregados
  
  post '/informacoes/:id', to: 'empregados#informacoes'
  post '/login', to: 'empregados#login'
  get '/solicitacoes_por_empregado/:id', to: 'solicitacoes#listar_solicitacoes_por_empregado'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
