require 'rails_helper' 

describe Empregado do 

 context 'empregado com nome e cpf' do
 
    it do
      empregado = Empregado.create(nome: "Romulo", cpf: "60441633340")
      expect(empregado).to be_valid
    end

 end
end