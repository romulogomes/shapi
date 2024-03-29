Rails.application.routes.draw do
  resources :solicitacoes
  resources :empregados
  
  post '/informacoes', to: 'empregados#informacoes'
  post '/empregados_por_empresa', to: 'empregados#listar_empregados_por_empresa' 
  post '/salvar_dados_empregado', to: 'empregados#salvar_dados_empregado' 
  post '/login', to: 'empregados#login'
  
  post '/solicitacoes_por_empregado', to: 'solicitacoes#listar_solicitacoes_por_empregado'
  post '/solicitacao/alterar_status', to: 'solicitacoes#alterar_status'
  post '/solicitacoes_por_mes_ano', to: 'solicitacoes#listar_solicitacoes_por_mes_ano'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
