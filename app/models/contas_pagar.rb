class ContasPagar < ActiveRecord::Base
  belongs_to :Fornecedor
  usar_como_dinheiro :valor

  self.per_page = 5
end
