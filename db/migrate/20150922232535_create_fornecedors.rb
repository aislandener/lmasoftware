class CreateFornecedors < ActiveRecord::Migration
  def change
    create_table :fornecedors do |t|
      t.string :nome, limit: 30
      t.string :cnpj, limit: 15
      t.string :endereco
      t.string :bairro, limit: 30
      t.string :cidade, limit: 30
      t.string :uf, limit: 2
      t.string :pais, limit: 20

      t.timestamps null: false
    end
  end
end
