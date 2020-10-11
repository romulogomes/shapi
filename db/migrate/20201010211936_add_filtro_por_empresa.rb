class AddFiltroPorEmpresa < ActiveRecord::Migration[6.0]
  def change
    create_table :empresas do |t|
      t.string :nome
      t.decimal :taxa, precision: 20, scale: 2
      t.boolean :ativa, default: true

      t.timestamps
    end

    execute "INSERT INTO empresas (nome, taxa, ativa, created_at , updated_at) values ('Farmácia do Jauro', 7.00, true, now(), now())"
    execute "INSERT INTO empresas (nome, taxa, ativa, created_at , updated_at) values ('Empresa de Teste', 8.70, true, now(), now())"
    
    add_reference :empregados, :empresa, foreign_key: true
    add_reference :solicitacoes, :empresa, foreign_key: true
  end
end
