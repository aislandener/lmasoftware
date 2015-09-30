class CreateTelefoneFornecedors < ActiveRecord::Migration
  def change
    create_table :telefone_fornecedors do |t|
      t.integer :ddd
      t.string :telefone, limit: 9
      t.references :Fornecedor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
