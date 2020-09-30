Rails.application.routes.draw do
  resources :solicitacoes
  resources :empregados
  
  post '/informacoes', to: 'empregados#informacoes'
  post '/login', to: 'empregados#login'
  get '/solicitacoes_por_empregado/:id', to: 'solicitacoes#listar_solicitacoes_por_empregado'
  post '/solicitacao/alterar_status', to: 'solicitacoes#alterar_status'
  post '/solicitacoes_por_mes_ano', to: 'solicitacoes#listar_solicitacoes_por_mes_ano'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
