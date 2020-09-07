class CreateSolicitacoes < ActiveRecord::Migration[6.0]
  def change
    create_table :solicitacoes do |t|
      t.references :empregado, null: false, foreign_key: true
      t.decimal :valor
      t.string :data_da_solicitacao
      t.string :status
      t.string :taxa

      t.timestamps
    end
  end
end
