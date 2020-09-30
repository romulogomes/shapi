class Solicitacao < ApplicationRecord
  belongs_to :empregado

  attribute :status, :string, default: 'processando'
  attribute :data_da_solicitacao, :string, default: -> { Date.today.strftime('%d/%m/%Y') }
  attribute :mes_ano, :string, default: -> { Date.today.strftime('%m/%Y') }
end
