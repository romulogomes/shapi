class Empregado < ApplicationRecord
  validates :nome, :cpf, presence: true

  attribute :senha, :string, default: '123'
end
