class CreateTelefoneClientes < ActiveRecord::Migration
  def change
    create_table :telefone_clientes do |t|
      t.integer :ddd
      t.string :telefone, limit: 9
      t.references :Cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
