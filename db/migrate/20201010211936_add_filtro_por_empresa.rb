class AddFiltroPorEmpresa < ActiveRecord::Migration[6.0]
  def change
    create_table :empresas do |t|
      t.string :nome
      t.decimal :taxa, precision: 20, scale: 2
      t.boolean :ativa, default: true

      t.timestamps
    end

    add_reference :empregados, :empresa, foreign_key: true
    add_reference :solicitacoes, :empresa, foreign_key: true
  end
end
