class AddMesAnoNasSolicitacoes < ActiveRecord::Migration[6.0]
  def change
    add_column :solicitacoes, :mes_ano, :string
  end
end
