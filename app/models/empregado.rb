class Empregado < ApplicationRecord
  validates :nome, :cpf, presence: true
end
