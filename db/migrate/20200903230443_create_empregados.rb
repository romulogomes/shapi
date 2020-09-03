class CreateEmpregados < ActiveRecord::Migration[6.0]
  def change
    create_table :empregados do |t|
      t.string :nome
      t.string :data_nascimento
      t.string :cpf

      t.timestamps
    end
  end
end
