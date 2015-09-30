class CreateContasPagars < ActiveRecord::Migration
  def change
    create_table :contas_pagars do |t|
      t.string :dataEmissao, limit: 25
      t.float :valor
      t.string :vencimento, limit: 25
      t.float :juros
      t.float :multa
      t.references :Fornecedor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
