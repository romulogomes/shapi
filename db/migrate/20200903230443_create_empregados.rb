class CreateEmpregados < ActiveRecord::Migration[6.0]
  def change
    create_table :empregados do |t|
      t.string :nome
      t.string :data_de_nascimento
      t.string :cpf
      t.string :banco
      t.string :agencia
      t.string :conta
      t.string :senha
      t.string :email
      t.timestamps
    end
  end
end
