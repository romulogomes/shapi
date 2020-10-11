class ChangeColumnTaxa < ActiveRecord::Migration[6.0]
  def change
    remove_column :solicitacoes, :taxa
    add_column :solicitacoes, :taxa, :decimal, precision: 20, scale: 2

    execute "UPDATE solicitacoes SET taxa = 7.00"
  end
end
