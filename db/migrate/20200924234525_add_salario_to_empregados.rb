class AddSalarioToEmpregados < ActiveRecord::Migration[6.0]
  def change
    add_column :empregados, :salario, :decimal, precision: 20, scale: 2
  end
end
